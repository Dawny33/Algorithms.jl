###################################################
# Contains implementations for sorting algorithms #
###################################################

"""
The swapping function implementation
"""
function swap!{T}(x::AbstractArray{T}, a::T, b::T)

  tmp = x[a]
  x[a] = x[b]
  x[b] = tmp
  return x

end


"""
`insertsort!{T}(x::AbstractArray{T}) ↦ x::AbstractArray`

Sorts an array using the **Insertion Sort** approach.
"""
function insertsort!{T}(x::AbstractArray{T})

  for index = 2:length(x)

    current  = x[index]
    position = index

    # For sublist sorting
    while position > 1 && x[position - 1] > current
      x[position] = x[position - 1]
      position -= 1
    end

    x[position] = current

  end

  return x
end


"""
`bubblesort!{T}(x::AbstractArray{T}) ↦ x::AbstractArray`

Sorts an array using the **Bubble Sort** approach.
"""
function bubblesort!{T}(x::AbstractArray{T})

  for i in 2:length(x)
    for j in 1:length(x)-1
      if x[j] > x[j+1]
        swap!(x, j, j+1)
      end
    end
  end

  return x
end


"""
`selectsort!{T}(x::AbstractArray{T}) ↦ x::AbstractArray`

Sorts an array using the **Selection Sort** approach.
"""
function selectsort!{T}(x::AbstractArray{T})

  for i in 1:length(x)-1
    iMin = i
    for j in i+1:length(x)
      if x[j] < x[iMin]
        iMin = j
      end
    end

    swap!(x, i, iMin)
  end

  return x
end


"""
`quicksort!{T}(x::AbstractArray{T}) ↦ x::AbstractArray`

Sorts an array using the **Quick Sort** approach.
"""
function quicksort!{T}(x::AbstractArray{T}, first::T = 1, last::T = length(x))

  if last > first

    pivot       = x[first]
    left, right = first, last

    while left <= right
      while x[left] < pivot
        left += 1
      end
      while x[right] > pivot
        right -= 1
      end
      if left <= right
        swap!(x, left, right)
        left += 1
        right -= 1
      end
    end

    quicksort!(x, first, right)
    quicksort!(x, left, last)
  end

  return x
end


"""
`mergesort!{T}(x::AbstractArray{T}) ↦ x::AbstractArray`

Sorts an array using the **Merge Sort** approach.
"""
function mergesort!{T}(x::AbstractArray{T})

  if length(x) > 1
    mid    = div(length(x), 2)
    left   = mergesort!(x[1:mid])
    right  = mergesort!(x[mid+1:length(x)])
    result = Array(eltype(left), length(left) + length(right))

    k = 1

    while length(left) != 0 && length(right) != 0
      if left[1] <= right[1]
        result[k] = left[1]
        left      = left[2:end]
      else
        result[k] = right[1]
        right = right[2:end]
      end
      k += 1
    end

    while length(left) != 0
      result[k] = left[1]
      left = left[2:end]
      k += 1
    end

    while length(right) != 0
      result[k] = right[1]
      right = right[2:end]
      k += 1
    end

  for i = 1:length(x)
    x[i] = result[i]
  end

  end

  return x
end

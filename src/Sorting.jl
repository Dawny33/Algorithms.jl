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
        swap!(a, x[j], x[j+1])
      end
    end
  end

  return x
end


"""
`selectionsort!{T}(x::AbstractArray{T}) ↦ x::AbstractArray`

Sorts an array using the **Selection Sort** approach.
"""
function selectionsort!{T}(x::AbstractArray{T})

  for i in 1:length(x)-1
    iMin = i

    for j in i+1:length(x)
      if x[j] < x[iMin]
        iMin = j
      end
    end

    if iMin != i
      swap!(x, i, iMin)
    end
  end

  return x
end

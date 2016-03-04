###################################################
# Contains implementations for sorting algorithms #
###################################################

"""
`insertsort!{T}(x::AbstractArray{T})` ↦ x::AbstractArray

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

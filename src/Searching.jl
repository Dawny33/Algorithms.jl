#####################################################
# Contains implementations for searching algorithms #
#####################################################

"""
`seqsearch{T}(x::AbstractArray{T}, item::T)` ↦ found::Bool

Searches for an item using the **Sequential Search** approach.
"""
function seqsearch{T}(x::AbstractArray{T}, item::T)
  index = 1
  found = false

  while index <= length(x) && !found
    x[index] == item ? found = true : index += 1
  end

  return found
end


"""
`ordseqsearch{T}::(x::AbstractArray{T}, item::T) ↦ found::Bool`

Searches for an item in a sorted array using the **Sequential Search** approach.
"""
function ordseqsearch{T}(x::AbstractArray{T}, item::T)
  index = 1
  found = false
  stop  = false

  while index <= length(x) && !found && !stop
    x[index] == item ? found = true : x[index] > item ? stop = true : index += 1
  end

  return found
end

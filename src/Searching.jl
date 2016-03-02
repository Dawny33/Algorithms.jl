#####################################################
# Contains implementations for searching algorithms #
#####################################################


function SequentialSearch(x::AbstractArray, item)
  # Searches for an item using the SequentialSearch approach
  pos = 1
  found = false

  for pos in 1:length(x)
    if found  == false
      if x[pos] == item
        found = true
      else
        pos += 1
      end
    end
  end

  return found

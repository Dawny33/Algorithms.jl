module SearchSortAlgos

  import Base:
    length,
    show,
    AbstractArray,
    fld,
    hvcat

  export Searching,
         Sorting,
         seqsearch,
         ordseqsearch,
         binarysearch,
         insertsort!,
         bubblesort!,
         selectsort!,
         quicksort!,
         mergesort!


# Source Files

  include("Searching.jl")
  include("Sorting.jl")

end # module

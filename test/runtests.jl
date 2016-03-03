using Algorithms
using Base.Test


# Items used for testing
a = [1, 2, 3, 4]
b = [1, 2, 3, 5]
item = 4

# Tests for seqsearch
@test seqsearch(a, 4) == true
@test seqsearch(b, 4) == false

# Tests for ordseqsearch
@test ordseqsearch(a, 4) == true
@test ordseqsearch(b, 4) == false

# Tests for binarysearch
@test binarysearch(a, 4) == true
@test binarysearch(b, 4) == false

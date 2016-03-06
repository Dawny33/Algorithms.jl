using Algorithms
using Base.Test


# Items used for testing search algorithms
a = [1, 2, 3, 4]
b = [1, 2, 3, 5]
item = 4

# Items used for testing sort algorithms
c = [23, 12, 17, 88, 90, 26, 34, 129]


# Tests for seqsearch
@test seqsearch(a, 4) == true
@test seqsearch(b, 4) == false

# Tests for ordseqsearch
@test ordseqsearch(a, 4) == true
@test ordseqsearch(b, 4) == false

# Tests for binarysearch
@test binarysearch(a, 4) == true
@test binarysearch(b, 4) == false

# Tests for insertsort!
@test insertsort!(c) == [12,17,23,26,34,88,90,129]

# Tests for bubblesort!
@test bubblesort!(c) == [12,17,23,26,34,88,90,129]

# Tests for selectsort!
@test selectsort!(c) == [12,17,23,26,34,88,90,129]

# Tests for quicksort!
@test quicksort!(c) == [12,17,23,26,34,88,90,129]

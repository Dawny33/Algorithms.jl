using Algorithms
using Base.Test


# Tests for SequentialSearch
a = [1, 2, 3, 4]
b = [1, 2, 3, 5]
item = 4
@test SequentialSearch(a, 4) == true
@test SequentialSearch(b, 4) == false

using SearchSortAlgos
using Base.Test


# Items used for testing search algorithms
a = [1, 2, 3, 4]
b = [1, 2, 3, 5]
item = 4
searches = [:seq, :ordseq, :binary]

# Searching Tests
for search in searches
	@eval @test $(symbol(string(search, "search")))(a, 4) == true
	@eval @test $(symbol(string(search, "search")))(b, 4) == false
end


# Items used for testing sort algorithms
sorts = [:insert, :bubble, :select, :quick, :merge]
c = [23, 12, 17, 88, 90, 26, 34, 129]

# Sorting Tests
for sort in sorts
	c = [23, 12, 17, 88, 90, 26, 34, 129]
	@eval @test $(symbol(string(sort, "sort!")))(c) == [12,17,23,26,34,88,90,129]
end

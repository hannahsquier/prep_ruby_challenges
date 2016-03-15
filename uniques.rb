def uniques(array)
	unique_elem = []
	array.each do |elem|
		if !unique_elem.include?(elem)
			unique_elem << elem
		end
	end
	return unique_elem
end

p uniques([1,5,"frog", 2,1,3,"frog"])
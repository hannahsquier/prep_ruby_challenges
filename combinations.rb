def combinations(array1, array2)
	combo = []

	i = 0
	while i < array1.length
		j = 0
		while j < array2.length
			combo << (array1[i] + array2[j])
			j += 1
		end
		i += 1
	end
	return combo
end

p combinations(["on","in"],["to","rope"])
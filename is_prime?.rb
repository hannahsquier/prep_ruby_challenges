def is_prime?(n)
	i = n - 1
	while i > 1
		if n % i == 0
			return false
		end
		i -= 1
	end
	return true
end

p is_prime?(7)
p is_prime?(14)
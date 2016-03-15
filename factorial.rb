def factorial(n)
	numbers = (2..n).to_a
	factorial = numbers.inject(1) {|result, multiplier| result * multiplier}
	return factorial
end

puts factorial(5)
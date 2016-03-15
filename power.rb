def power(base, exp)	
	power = Array.new(exp,base)
	power = power.inject(1) {|result, mult| result * mult}
	return power
end

puts power(3,4)

def overlap(rect1, rect2)
	rect1x = (rect1[0][0]...rect1[1][0]).to_a
	rect1y =  (rect1[0][1]...rect1[1][1]).to_a
	rect2x = (rect2[0][0]...rect2[1][0]).to_a
	rect2y =  (rect2[0][1]...rect2[1][1]).to_a

	overlapx = rect1x.select {|x| rect2x.include?(x)}
	overlapy = rect1y.select {|y| rect2y.include?(y)}

	if overlapx != [] && overlapy != []
		return true
	else 
		return false
	end
end


p overlap([[0,0],[3,3]], [[1,1],[4,5]])
p overlap([[0,0],[1,4]], [[1,1],[3,2]])

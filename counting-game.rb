def counting_game(players, num)
	player_num_hash = {}
	players = (1..players).to_a #players keeps track of order
	p players.length
	p players[5]

	p = 0 #players index
	n = 1 #number on
	
	while n < num
		
		#if the number is evely divisibly by 7
		if n % 7 == 0 
			player_num_hash[n] = players[p]
			
			#change players to reflect new order
			players_reverse = players.reverse 

			while players_reverse[p] != players[p]
				next_num = players_reverse.last
				players_reverse.pop
				players_reverse = players_reverse.unshift(next_num)	
			end 

			players = players_reverse
			

			p += 1 if p != (players.length) 
			p = 0 if p == (players.length) 
			 			
		#if the number is evely divisibly by 11
		elsif n % 11 == 0 
			player_num_hash[n] = players[p]

			p += 2 if p != (players.length - 1) && p != (players.length)
			p = 1 if p == (players.length) 
			p = 0 if p == (players.length - 1) 


		else 
			player_num_hash[n] = players[p]

			p += 1 if p != (players.length) 
			p = 0 if p == (players.length) 

		end
		
		
		n += 1

		
	end

	return player_num_hash #format is {number => player}
end

p counting_game(5, 45)
class Player
	def initialize(name, score)
		@name = name.capitalize
		@score = score
	end
end


class Game

	def roll
		3
	end

  def play(rounds)

  	player.roll
 		
		loop do
		player.flip
		puts "Playing round #{rounds}."

		#player flips
		puts "\n #{player.name} flipped #{flip_choice}"


		case player_score
		when == 31
			break
			puts "(Active player) wins!"

		when >= 31
			break
			puts "(Active player) overshot and lost :( (Inactive player) wins!"	
		else player_score < 31
			puts "Taking another turn!"
			#change active player
		end
	end

	def choice(choice_array)
		choice_array.shuffle[0]
		puts choice
	end

	def flip(roll, choice)
		if roll == 1
			choice_array = [2, 3, 4, 5]
			puts choice
		elsif roll == 2
			choice_array = [1, 3, 4, 6]
			puts choice
		elsif roll == 3
			choice_array = [1, 2, 5, 6]
			puts choice
		elsif roll == 4
			choice_array = [1, 2, 5, 6]
			puts choice
		elsif roll == 5
			choice_array = [1, 3, 4, 6]
			puts choice
		elsif roll == 6
			choice_array = [2, 3, 4, 5]
			puts choice
		else 
			puts "That is an invalid number, please flip again."
		end
	end
end

	player1 = Player.new("kim")
	player2 = Player.new("kanye")
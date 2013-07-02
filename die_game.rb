class Player

	def initialize(name, player_score)
		@name = name.capitalize
		@player_score = player_score
	end

	def player_score
		choice = choice_array.shuffle[0]
		player_score = choice.to_i + @roll.to_i
	end
end

class Game
	def initialize()
	end

	def play_game

		@players = [player1, player2]

		@players.each do |player|
			GameTurn.take_turn(player)
		end
	end
end

module GameTurn
	def self.roll
		rand(1..6)
	end

	def self.flip(roll)
		if roll == 1
			choice_array = [2, 3, 4, 5]
		elsif roll == 2
			choice_array = [1, 3, 4, 6]
		elsif roll == 3
			choice_array = [1, 2, 5, 6]
		elsif roll == 4
			choice_array = [1, 2, 5, 6]
		elsif roll == 5
			choice_array = [1, 3, 4, 6]
		elsif roll == 6
			choice_array = [2, 3, 4, 5]
		else 
			puts "That is an invalid number, please roll again."
# 		choice = choice_array.shuffle[0]
# 		puts choice
		end
	end


	def self.eval_score(player_score)
		if player_score == 31
			puts "(Active player) wins!"
		elsif player_score >= 31
			puts "(Active player) overshot and lost :( (Inactive player) wins!"	
		else player_score < 31
			puts "Taking another turn!"
			play
		end
	end
end

		player1 = Player.new("kim")
  	player2 = Player.new("kanye")

player1.play_game
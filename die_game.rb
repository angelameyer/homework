# #loop do
# 	# choose next player
# 	# player flips die
# 	# check if win or loss
# 	# if win / loss, print message and break
# 	# otherwise, start over at top
# #end


class Player
	def initialize(name, score=0)
		@name = name.capitalize
		@score = score
	end
end

class Game

	def initalize(players)
		@players = [player1, player2]
	 	@current_player_index = 0
	 	@player_scores = Hash.new(0)
 	end


 	def update_score
 		@score + flip_choice
 	end

  def play
  	current_player.roll_die
  	puts "(Active player) rolled (roll)."
  	next_player

  	loop do
			current_player.flip
			puts "Playing round."
			puts "\n #{current_player.name} flipped #{flip_choice}"
			update_score
			if @player_score == 31
				puts "#{current_player.name} wins!"
				break
			elsif @player_score >= 31
				puts "#{current_player.name} overshot and lost :( (Inactive player) wins!"	
				break
			else @player_score < 31
				puts "(Inactive player)'s turn!"
				next_player
			end
		end
 	end

	def next_player
		@current_player_index += 1
		@players[@current_player_index % @players.length]
	end	

	def current_player
		@players[@current_player_index % @players.length]
	end	

	def roll_die
		top_side = rand(1..6)
	end


	def flip(top_side)
		loop do
			if top_side == 1
				@choice_array = [2, 3, 4, 5]
			elsif top_side == 2
				@choice_array = [1, 3, 4, 6]
			elsif top_side == 3
				@choice_array = [1, 2, 5, 6]
			elsif top_side == 4
				@choice_array = [1, 2, 5, 6]
			elsif top_side == 5
				@choice_array = [1, 3, 4, 6]
			elsif top_side == 6
				@choice_array = [2, 3, 4, 5]
			end

			puts "Choose a side: #{@choice_array.join(', ')}"
			flip_choice = gets.chomp.to_i

			if @choice_array.include? flip_choice
				puts "Great choice!"
				return flip_choice
			else
				puts "That is an invalid number, please try again."
			end
		end
	end
end


game1 = Game.new

game1.play


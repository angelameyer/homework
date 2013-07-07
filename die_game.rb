class Player
	def initialize(name, score=0)
		@name = name.capitalize
		@score = score
	end
end

class Game
	def initalize
		@players = ["Kim", "Kanye"]
	 	@current_player_index = 0
 	end

  def play
  	current_player.roll
  	puts "(Active player) rolled (roll)."
  	next_player

  	loop do
			current_player.flip
			puts "Playing round."
			puts "\n #{current_player.name} flipped #{flip_choice}"

			if @player_score == 31
				puts "#{current_player} wins!"
				break
			elsif @player_score >= 31
				puts "#{current_player} overshot and lost :( (Inactive player) wins!"	
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

	def print_flip_choices
		puts "Choose a side: #{@choice_array.join(',')}"
	end

	def roll
		(1..6)
	end

	def flip(roll)
		if roll == 1
			@choice_array = [2, 3, 4, 5]
			print_flip_choices
		elsif roll == 2
			@choice_array = [1, 3, 4, 6]
			print_flip_choices
		elsif roll == 3
			@choice_array = [1, 2, 5, 6]
			print_flip_choices
		elsif roll == 4
			@choice_array = [1, 2, 5, 6]
			print_flip_choices
		elsif roll == 5
			@choice_array = [1, 3, 4, 6]
			print_flip_choices
		elsif roll == 6
			@choice_array = [2, 3, 4, 5]
			print_flip_choices
		else 
			puts "That is an invalid number, please flip again."
		end
	end
end


player1 = Player.new("Kim")
player2 = Player.new("Kanye")
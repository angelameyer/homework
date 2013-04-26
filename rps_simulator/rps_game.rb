puts "Welcome to Rock, Paper, Scissors!"

puts "Enter r for Rock"
puts "Enter s for Scissors"
puts "Enter p for paper"

player_choice = gets

class Game

	def initialize(player_choice)
		@player_choice = player_choice
	end

	def play_round(player_choice)
			rps = ['r', 'p', 's']
			@computer_choice = rps[rand(0..2)]
			puts @computer_choice
	
		if @player_choice == rps[1] && @computer_choice == rps[0] ||
			 @player_choice == rps[2] && @computer_choice == rps[1] ||
			 @player_choice == rps[0] && @computer_choice == rps[2]
				puts "You Win!"
		elsif @player_choice == @computer_choice
			puts "You Tie!"
		else
			puts "You Lose!"
		end
	end
end

game1 = Game.new(player_choice)

game1.play_round(player_choice)

# class Compare


# scissors beats paper
# paper beats rock
# rock beats scissors

# end

# class Winner



# end




puts "Welcome to Rock, Paper, Scissors!"

puts "Enter r for Rock"
puts "Enter s for Scissors"
puts "Enter p for paper"

player_choice = gets

class Game
	def initialize(player_choice)
		@player_choice = player_choice
	end

	def play_round
			rps = ['r', 'p', 's']
			random_index = rand(0..2)
			@computer_choice = rps[random_index]
			puts @computer_choice

			who_wins(@player_choice, @computer_choice, rps)
	end

	def who_wins(player_choice, computer_choice)
		if player_choice == 'p' && computer_choice == 'r' ||
		   player_choice == 'r' && computer_choice == 's' ||
		   player_choice == 's' && computer_choice == 'p'
			 puts "You Lose!"

		elsif player_choice == 'r' && computer_choice == 'r' ||
		   player_choice == 'p' && computer_choice == 'p' ||
		   player_choice == 's' && computer_choice == 's'
			 puts "You Tie!"		
		else
		  puts "You Win!"	
		end
	end
end

game1 = Game.new(player_choice)
#game1.play_round


puts "Should be all wins:"
game1.who_wins('r', 's')
game1.who_wins('p', 'r')
game1.who_wins('s', 'p')
puts

puts "Should be all ties:"
game1.who_wins('r', 'r')
game1.who_wins('p', 'p')
game1.who_wins('s', 's')
puts

puts "Should be all loses:"
game1.who_wins('r', 'p')
game1.who_wins('s', 'r')
game1.who_wins('p', 's')
puts

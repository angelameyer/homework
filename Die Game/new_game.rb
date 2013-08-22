require_relative 'die'
require_relative 'player'


class Game

  def initalize
    player_names
    @players = [Player.new(@name1), Player2.new(@name2)]
    @die = Die.new
    game_score_start_and_goal
  end

  def play
    game_score_start_and_goal
      loop do
        @players.each do |p|
        puts "#{p}'s turn to flip!"
        input = gets.to_i
        @score += @die.flip_choice(input)
        #this is the part thats fucked
        puts "The total score is now #{@score}."
        tally_score
        return 
        end
      end
    end
  end

  def game_score_start_and_goal
    @score = 0
    @goal = 31
  end

  def eval_score
    @score += @die.top_side
  end

  def get_player_names
    puts "Who is our first player? Enter your name."
    @name1 = gets.chomp
    puts "Who is our second player? Enter your name. "
    @name2 = gets.chomp
    puts "Player 1 is #{@name1}. Player2 is #{@name2}. Faceoff!"
  end 

  def tally_score
    if @score == @goal
       exit("#{p.name} wins!")
    elsif @score >= @goal
      exit("#{p.name} overshot and lost :(")
    else @score < @goal
      puts "Time for ANOTHER TURN!"
  end
end
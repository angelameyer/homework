require_relative 'die'
require_relative 'player'


class Game

  def initialize
    get_player_names
    @players = [Player.new(@name1), Player.new(@name2)] 
    @die = Die.new
    game_score_start_and_goal
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

  def play
    game_score_start_and_goal
    puts "Computer rolled #{eval_score.to_s}, which is now the current score."
    puts "....................."
      loop do
        @players.each do |p|
          puts "#{p.name}'s turn to flip!"
          eval_score
          @score += @die.flip_choice.to_i
          puts "The total score is now #{@score}."
          puts "....................."
            if @score == @goal
               abort("#{p.name} wins!")
            elsif @score >= @goal
              abort("#{p.name} overshot and lost :(")
            else @score < @goal
              puts "Time for ANOTHER TURN!"
        end
      end
    end
  end
end
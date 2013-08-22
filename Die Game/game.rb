require_relative 'die'
require_relative 'player'


class Game
  def initalize
    @players = [player.new(@name1), player2.new(@name2)]
    @current_player_index = 0
    @die = Die.new
    game_specifications
  end

  def game_specifications
    @score = 0
    @goal = 31
  end

  def next_player
    @current_player_index += 1
    @players[@current_player_index % @players.length]
  end 

  def current_player
    @players[@current_player_index % @players.length]
  end 

  def update_score
    player.score + flip_choice
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
      if @score == @goal
        puts "#{current_player.name} wins!"
        break
      elsif @score >= @goal
        puts "#{current_player.name} overshot and lost :( (Inactive player) wins!"  
        break
      else @score < @goal
        puts "(Inactive player)'s turn!"
        next_player
      end
    end
  end
end
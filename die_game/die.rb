class Die

  attr_accessor :top_side

  def initialize
    roll_die
    @bottom_side = [[1, 6], [2, 5], [3, 4]]
  end

  def roll_die
    @top_side = rand(1..6)
  end

  def flip_choice
    roll_die
      if @top_side == 1
      @choice_array = [2, 3, 4, 5]
    elsif @top_side == 2
      @choice_array = [1, 3, 4, 6]
    elsif @top_side == 3
      @choice_array = [1, 2, 5, 6]
    elsif @top_side == 4
      @choice_array = [1, 2, 5, 6]
    elsif @top_side == 5
      @choice_array = [1, 3, 4, 6]
    elsif @top_side == 6
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
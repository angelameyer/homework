puts "Choose a number between 0-1000"


def convert(digit_char)
		numbers = {
				    "1" => ["   ", 
				    	      "  |",
				    	      "  |"], 
				    "2" => [" _ ",
				            " _|",
				            "|_ "],
				    "3" => [" _ ",
				            " _|",
				            " _|"],
				    "4" => ["   ",
				            "|_|",
				            "  |"],
				    "5" => [" _ ",
				            "|_ ",
				            " _|"],
				    "6" => [" _ ",
				            "|_ ",
				            "|_|"],
				    "7" => [" _ ",
				            "  |",
				            "  |"],
				    "8" => [" _ ",
				            "|_|",
				            "|_|"],
				    "9" => [" _ ",
				            "|_|",
				            " _|"],
				    "0" => [" _ ",
				            "| |",
				            "|_|"]
				  }

          numbers[digit_char]
end

def print_digits(digits)
  first_seg = convert(digits[0])
  rows = first_seg.size

  result_lines = []
  rows.times do
    result_lines << ""
  end

  digits.each_char do |digit_char|
    segments = convert(digit_char)

    row = 0
    segments.each do |seg|
      result_lines[row] += "#{seg} "
      row += 1
    end
  end

  result_lines.each do |r|
    puts r
  end
end


print_digits("1")



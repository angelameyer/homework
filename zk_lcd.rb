def transform(digit_char)
  lookup = {
    '0' => [
      " - ",
      "| |",
      "   ",
      "| |",
      " _ ",
    ],
    '1' => [
      "   ",
      "  |",
      "   ",
      "  |",
      "   ",
    ],
    '2' => [
      " - ",
      "  |",
      " - ",
      "|  ",
      " _ ",
    ],
    '3' => [
      " - ",
      "  |",
      " - ",
      "  |",
      " _ ",
    ],
    '4' => [
      "   ",
      "| |",
      " - ",
      "  |",
      "   ",
    ],
    '5' => [
      " - ",
      "|  ",
      " - ",
      "  |",
      " _ ",
    ],
    '6' => [
      " - ",
      "|  ",
      " - ",
      "| |",
      " _ ",
    ],
    '7' => [
      " - ",
      "| |",
      "   ",
      "  |",
      "   ",
    ],
    '8' => [
      " - ",
      "| |",
      " - ",
      "| |",
      " _ ",
    ],
    '9' => [
      " - ",
      "| |",
      " - ",
      "  |",
      " _ ",
   ]
  }

end

def print_digits(digits)
  first_seg = transform(digits[0])
  rows = first_seg.size

  result_lines = []
  rows.times do
    result_lines << ""
  end

  digits.each_char do |digit_char|
    segments = transform(digit_char)

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

print_digits(gets.strip)
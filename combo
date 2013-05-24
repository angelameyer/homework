puts "Enter in any 1-800 number. We will produce a list of all possible outcomes."

entry = gets

entry_digits = entry.gsub(/[^0-9]/i, '').unpack('aaaaaaaaaaa')

@first_digits = entry_digits[0..3]

last_digits = entry_digits[4..10]

def convert(last_digits)
	numbers = {
						 '1' => ['1'],	
						 '2' => ['A', 'B', 'C'], 
						 '3' => ['D', 'E', 'F'],
						 '4' =>	['G', 'H', 'I'],
						 '5' =>	['J', 'K', 'L'],
						 '6' =>	['M', 'N', 'O'],
						 '7' =>	['P', 'Q', 'R', 'S'],
						 '8' =>	['T', 'U', 'V'],
						 '9' =>	['W', 'X', 'Y', 'Z'],
						 '0' =>	['0']}
		numbers[last_digits]
end

def print(last_digits)
	new_letters = []

	last_digits.each do |number|
		 letter_array = convert(number)

		 new_letters << letter_array

		 list = new_letters[0..6]
		 combos = list.first.product(*list[1..-1]).map(&:join)

		 combos.each do |combo|
		 	new_string = @first_digits.pack('aaaa') + combo

			 if new_string.length == 11
				puts new_string.insert(1, '-').insert(5, '-').insert(9, '-')
			 end
	    end
    end
end

print(last_digits)
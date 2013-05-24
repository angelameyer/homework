puts "Enter in a 1-800-XXX-XXXX number."

entry = "1-800-FUC-KUPS"

# gets.strip = entry

#space out into seperate groupigns of arrays (entry values)
#1st 3 to equal entry_numbers
#Rest equal entry_letters
entry_values = entry.gsub(/[^0-9a-z]/i, '').unpack('aaaaaaaaaaa')

@entry_numbers = entry_values[0..3]
# puts entry_numbers

entry_letters = entry_values[4..10]

def convert(entry_letters)
	numbers = {
						 'A' => '2', 
						 'B' => '2',
						 'C' => '2',
						 'D' => '3',
						 'E' => '3',
						 'F' => '3',
						 'G' => '4',
						 'H' => '4',
						 'I' => '4',
						 'J' => '5',
						 'K' => '5',
						 'L' => '5',
						 'M' => '6',
						 'N' => '6',
						 'O' => '6',
						 'P' => '7',
						 'Q' => '7',
						 'R' => '7',
						 'S' => '7',
						 'T' => '8',
						 'U' => '8',
						 'V' => '8', 	 	
						 'W' => '9',
						 'X' => '9',
						 'Y' => '9',
						 'Z' => '9'}
		numbers[entry_letters]
end

def print(entry_letters)
	new_numbers = []
	
	entry_letters.each do |letter|
	 	number_array = convert(letter)
	 	new_numbers << number_array
	end

	new_string = @entry_numbers.pack('aaaa') + new_numbers.pack('aaaaaaa')
	puts new_string.insert(1, '-').insert(5, '-').insert(9, '-')
end



print(entry_letters)




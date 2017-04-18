def caesar_cipher(string, shift_factor)
	ascii = []
	shifted_numbers = []
	letters = string.scan(/./)
	new_string = ""

	letters.each do |letter|
		ascii.push(letter.ord)
	end

	ascii.each do |number|
		if number.between?(65,90)
			number += shift_factor
			if number > 90
				number = number - 26
			end
			shifted_numbers.push(number)

		elsif number.between?(97,122)
			number += shift_factor
			if number > 122
				number = number - 26
			end
			shifted_numbers.push(number)

		else
			shifted_numbers.push(number)
		end
	end

	shifted_numbers.each do |number|
		new_string += number.chr
	end

	puts new_string 

end

puts "Please enter a phrase to be encrypted"
text = gets.chomp
puts "Please enter a number for the shift factor"
number = gets.chomp.to_i
caesar_cipher(text, number)
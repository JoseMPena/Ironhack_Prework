require 'pry'

def solve_cipher(input, index)
	input_array = input.split("")
	solved = ""
	#convert index variable to translate any index to base 26
	if index >= 0
		index = index % 26
	else index = index % -26
	end

	#Apply the cipher only to letters
	input_array.each do |char|
		if char =~ /[aA-zZ]/
			secure_char = char.ord
			secure_char += index

			#Rollup the alphabet when going out of limits aA-zZ
			if char.between?('A','Z')
				if secure_char > 90
					secure_char -= 26
				elsif secure_char < 65
					secure_char += 26
				end
			elsif char.between?('a','z')
				if secure_char > 122
					secure_char -= 26
				elsif secure_char < 97
					secure_char += 26
				end
			end
			secure_char = secure_char.chr
			solved << secure_char
		else
			solved << char						
		end		
	end

	puts solved
end

solve_cipher("Pb uhdo qdph lv Grqdog Gxfn", -3)
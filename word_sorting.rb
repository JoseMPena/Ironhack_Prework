require 'pry'

def word_sorting(sentence)
	#binding.pry
	words_array = sentence.split(" ")
	index = 0

	for word in words_array do
		words_array[index] = word.gsub(/[^aA-zZ]/, '')
		index += 1
	end
	#binding.pry
	words_array = words_array.sort do |a,b| a.upcase <=> b.upcase	end
	puts words_array
end
	
word_sorting("Hola, huevo, mundo, alegria Buenos dias")
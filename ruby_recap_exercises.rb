require 'pry'

#This method elevates a number to given power
def power(base, expo)
  base**expo
end

#This method takes a string and returns a reversed version
def reverse(string)
	return string.reverse
end

#This method takes a number and returns its factorial (multiply every number there is up to the current)
def factorial(number)
	result = 1
	until number == 0
		result *= number
		number -= 1
	end
	return result
end

#This method converts given minutes in hours:minutes format
def time_conversion(minutes)
	hours = minutes / 60
	minutes %= 60
	if minutes < 10
		minutes = minutes.to_s
		minutes = "0" + minutes
	end

	format = "#{hours.to_s}:#{minutes}"
end

#This method receives a string and count all vowels in it
def count_vowels(string)
	count = 0
	vowels = ["a", "e", "i", "o", "u"]
	string.downcase.chars.each do |letter|
		for vowel in vowels
			if letter == vowel
				count += 1
			end
		end
	end
	return count
end

#This method takes an array and return only unique results, avoiding duplicates
def uniqueness(array)
	new_array = []
	array.each do |single|
		if !new_array.include?(single)
			new_array << single
		end
	end
	print "#{new_array}\n"
end

#This method receives a number (> 1) and tells if it's prime (tue, false)
def is_prime?(number)
	result = true
	if number > 1
		for value in (2..(number - 1))
			if (number % value) == 0
				result = false
			end
		end
	end
	puts result
end

#This method gets an string and returns true of false whether it's a palindrome
def palindrome?(string)
	reverse = string.reverse
	if string == reverse
		puts "true"
	else
		puts "false"
	end
end

#This method gets a string of letters and spaces and capitalize first letter of each word
def capitalize_words(string)
	capitalized_array = []
	array_words = string.split(" ")
	array_words.each do |word|
		capitalized_array << word.capitalize
		if word != array_words[array_words.size - 1]
			capitalized_array << " "
		end
	end
	puts capitalized_array.join
end

#This method retrns the position of the first pair of numbers that sums 0 in an array
def two_sum(array)
	pair_array = []
	array.each do |first|
		array.each do |second|
			if (first + second) == 0
				pair_array << array.index(first)
				pair_array << array.index(second)
			end
		end
	end
	pair_array = pair_array[0,2]
	puts "#{pair_array}"
end

#This method takes two number and returns the greatest integer even devisor
def greatest_common_factor(number1, number2)
	common_factor = 0
	divisor = number1
	while divisor > 0
		if common_factor == 0
			if (number1 % divisor) == 0 && (number2 % divisor) == 0
				common_factor = divisor
			end
		end
		divisor -= 1
	end
	puts common_factor
end

#This method takes integers from an array and pretty-prints polynomial format
def polynomial(array)
	size = array.size
	if size >= 2
		polinomy = []
		index = size
		array.each do |coefficient|
			polinomy << "#{coefficient}x^#{index}"
			index -= 1
			if index > 0 && (coefficient / coefficient) == 1
				polinomy << "+"
			end
		end
	else
		puts "Need at least 2 coefficients"
	end
end

puts power(3, 4)
puts reverse("You are not going anywhere")
puts factorial(5)
puts time_conversion(908)
puts count_vowels("onomatopeya")
uniqueness([1,5,"frog", 2, 1,3,"frog"])
is_prime?(7)
is_prime?(14)
palindrome?("radar")
palindrome?("bear")
capitalize_words("how is the capital today?")
two_sum([2, -5, 10, 5, 4, -10, 0])
greatest_common_factor(12, 16)
polynomial([-3, -4, 1,0,6])

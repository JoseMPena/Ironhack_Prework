require 'pry'

(1..100).each do |number|
	result = ""
	if number % 3 == 0
		result << "Fizz"
	end
	if number % 5 == 0
		result << "Buzz"
	end
	if number % 3 != 0 && number % 5 != 0
		result = number
	end
	puts result
#binding.pry
end

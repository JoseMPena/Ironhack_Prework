#First thing to print as we use Ruby.
puts "Hello, World!"

#Here we get inputs from keyboard. Inputs comes as strings
puts "What's your name?"
name = gets.chomp
puts "Hello, #{name}."

#Here is how I turn the sting to integers- I'm probaby drunk
puts "Give me a number"
first_number = gets.chomp.to_i
puts "Give me another number"
second_number = gets.chomp.to_i
puts "#{first_number} x #{second_number} = #{first_number * second_number}"

#Reading from another file. I like Ruby
file_contents = IO.read("HelloWorld.rb")
puts "The source file contains: #{file_contents}"

#Create a file using IO write
puts "What's your name?"
name = gets.chomp
IO.write('name.txt', name)
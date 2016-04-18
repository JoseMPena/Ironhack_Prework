puts "What is the source file?"
file_contents = IO.read(gets.chomp)
puts "What is the destination file?"
IO.write("#{gets.chomp}.txt", file_contents)
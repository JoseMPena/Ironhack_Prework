class Animal
	attr_accessor :name
	attr_accessor :age
	def initialize(name, age)
		@name = name
		@age = age		
	end

end

dog = Animal.new("Kenya", 2)
puts dog.name.upcase
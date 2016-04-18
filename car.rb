class Car

  def initialize(sound = "broom")
	@sound = sound
	@cities = []
  end
	
  def sound
		@sound
  end

  def cities<<(city)
	#@cities << city	

	File.open("cities_db.txt", "a") do |file|
		file << city + "\n"
	end
  end

  def cities
	#@cities.each { |city| puts city}

	File.open("cities_db.txt", "r").each do |line|
		puts line
	end
  end

end

car = Car.new
car.cities<<("Santo Domingo")
car.cities<<("Barcelona")
car.cities<<("Barahona")

car.cities



class RacingCar < Car

def initialize
	super
	@sound = "BROOOOM"	
end

end
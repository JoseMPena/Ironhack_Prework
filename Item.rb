require 'pry'
class Item 
	attr_accessor :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class Houseware < Item
	def price
		if @price > 100
			@price -= (@price * 0.05)
			#binding.pry
		end
		return @price 
	end
end

class Fruit < Item
	def price
		time = Time.new
		day = time.wday
		if day == 0 || day == 6
			@price -= (@price * 0.1)
		end
		return @price
	end 
end

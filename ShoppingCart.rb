require 'pry'
class ShoppingCart
	def initialize
		@items = Array.new
	end
	def add_item(item)
      @items << item
  	end

  	def checkout
  		total = 0
  		for item in @items
  			total += item.price
  		end
  		puts "Your total is #{total}€. Have a nice day!"
  	end
end

class ShackShop
	def initialize
		@milkshakes = []
	end

	def add(milkshake)
		@milkshakes.push(milkshake)
	end

	def check_milkshakes
		for milkshake in @milkshakes
			puts "Total Price"
			puts milkshake.price_of_milkshake
		end
	end
end

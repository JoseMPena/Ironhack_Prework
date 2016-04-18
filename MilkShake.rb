class MilkShake
	def initialize
		@base_price = 3
		@ingredients = []
	end

	def add_ingredient (ingredient)
		@ingredients << ingredient
	end
	
	def price_of_milkshake
		#Let's establish what our countes should be before we start adding ingredients into the mix
		total_price_of_milkshake = @base_price
		#Add each ingredient's orice to our total
		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
		end
		#Return our ttal price to whoever called for it
		total_price_of_milkshake
	end
end

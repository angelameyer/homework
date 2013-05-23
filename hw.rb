class Zaarly
	def initialize(sellers)
		@sellers = sellers
	end

	def to_s
		result = ""
	
		@sellers.each do |seller|
			result += seller.to_s
		end	

		result
	end
end 

class Seller
	def initialize(seller, item)
		@seller = seller.capitalize
		@items = []
	end

	def add_item(new_item)
		@items.push(new_item)
	end

	def to_s
		seller_string = "Seller #{@seller} has the following items:\n"
		
		@items.each do |item|
		  seller_string += "\t#{item}\n"
		end

		seller_string
	end	
end

class Item
	def initialize(title="name", price=0)
		@title = title.capitalize
		@price = price
	end

	def to_s
		"#{@title} for $#{@price}."
	end
end


seller1 = Seller.new("Adana", 3)
seller2 = Seller.new("larry", 3)


item1 = Item.new("cookie", 90)
item2 = Item.new("candy", 76)
item3 = Item.new("popsicles to cool the heat", 76)

item4 = Item.new("meditation session", 900)
item5 = Item.new("cat therapy", 34)
item6 = Item.new("conferencing from my couch", 6000)

seller1.add_item(item1)
seller1.add_item(item2)
seller1.add_item(item3)
seller2.add_item(item4)
seller2.add_item(item5)
seller2.add_item(item6)

sellers_array = [seller1, seller2]

puts Zaarly.new(sellers_array)




# Seller Adana has the following items:
#   cookie for $90
#   candy for $76
#   popsicles to cool the heat for $76

# Seller Adana has the following items:\n   cookie for $90\n   candy for $76\n   popsicles to cool the heat for $76

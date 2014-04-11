class BookInStore
	
	attr_reader :isbn, :price
	# attr_accessor :price

	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end
=begin

	def price_in_cents
		Integer(price*100 + 0.5)
	end

	def price_in_cents=(cents)
		@price = cents / 100.00
	end
=end

end
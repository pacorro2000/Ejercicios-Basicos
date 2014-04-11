class Integer
	def double
		self * 2
	end
end



class String
	def reverse
		"sorry no reverse"
	end

	def pluralize
		case self
		when "woman" then "women"
		when "person" then "people"
		when "octopus"then "octopi"
		when "sheep" then "sheep"
		else self + "s"		
		end
	end
end

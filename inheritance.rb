require './animal.rb'

class Rabbit < Animal
	def hop
		puts "Hopping is great fun"
	end
end

class Duck
	def swim
		puts "I'm quackers abour swimming!"
	end

	def say_hello
		"Quack! I'm a duck called #{@name}"
	end
end
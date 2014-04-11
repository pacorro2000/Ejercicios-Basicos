puts "Let's play a game! Type something!"
 input = ""

until imput == "goodbye"
	puts input.upcase
	input = gets.chomp
end

puts "Bye Let's play again soon!"
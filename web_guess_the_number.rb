require 'sinatra'

enable :sessions

get '/' do
	session[:number] = rand(1..100)
	session[:attempts] = 0
	@message = "I'm thinkng of a number between 1 and 100, try and guess what it is"
	erb :guess	
end

post '/' do
	number = session[:number]
	guess = params[:number].to_i
	session[:attempts] += 1
	redirect to('/success') if guess == number
	if guess < number then @message = "Too small, try again"
	elsif guess > number then @message = "Too big, try again"
	end
	erb :guess
end
	
get '/success' do		
	attempts = session[:attempts]
	"Well done, you guessed my number in #{attempts} attempt#{'s' if attempts > 1}!"
end

__END__

@@guess
<!doctype html>
<html>
<header>
	<title> Guess the number </title>
</header>
<body>
	<p><%= @message %></p>
	<form method="POST" action="/">
		<input name="number">
		<input type="submit" value="Guess">
	</form>
</body>
</html>
require 'rubygems'
require 'twilio-ruby'

account_sid = "ACfa16b33c92fb695c5b30296be3901ae9"
auth_token = "735542464031556bfee4a255f082c56c"

@client = Twilio::REST::Client.new(account_sid, auth_token)

puts "I can see into the future. And I always tell the truth..."
puts "Ask me anything: "
gets

i = rand(20)

response = ["It is certain", "It is decidedly so", "Without a doubt", 
	"Yes, definitely", "You may rely on it", "As I see it, yes", "Most likely",
	 "Outlook good", "Yes", "Signs point to yes", "Reply hazy, try later",
	 "Ask again later", "Better not tell you now", "Cannot predict now",
	"Concentrate and ask again", "Dn't count on it", "My reply is now", 
	"My sources say no", "Outlook not so good", "Very doubtful"]

fortune = response[i]

	message = @client.account.messages.create(
	:from => "7328317202",
	:to => "7326918091",
	:body => fortune
	)

puts message.to
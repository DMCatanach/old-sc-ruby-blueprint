require 'rubygems'
require 'twilio-ruby'

account_sid = "AC00cba4fc3dce9c3df64615bf02b828f9"
auth_token = "e579f58801c314b4d58986409babda53"

@client = Twilio::REST::Client.new(account_sid, auth_token)


#step 1 - accept a question, which means user input, for now, via the terminal.
#but wouldn't it be cool if you could text it in? don't know how to do that yet, though
#check Twilio documentation for anything that may help make that happen https://www.twilio.com/docs/api or https://github.com/twilio/twilio-ruby/wiki/REST
puts "What is your yes-or-no question?"
input = gets.chomp  

#step 2 - select a random answer from list of possible answers
#could probably refactor this to use an array instead; would have to figure out how to use random number generator with it

number = rand(20)
case (number)
	when 0
		answer = "It is certain."
	when 1 
		answer = "It is decidedly so."
	when 2 
		answer = "Without a doubt."
	when 3 
		answer = "Yes, definitely."
	when 4 
		answer = "You may rely on it."
	when 5 
		answer = "As I see it, yes."
	when 6 
		answer = "Most likely."
	when 7 
		answer = "Outlook good."
	when 8 
		answer = "Yes."
	when 9
		answer = "Signs point to yes."
	when 10 
		answer = "Reply hazy; try again."
	when 11 
		answer = "Ask again later."
	when 12 
		answer = "Better not tell you now."
	when 13 
		answer = "Cannot predict now."
	when 14 
		answer = "Concentrate and ask again."
	when 15 
		answer = "Don't count on it."
	when 16 
		answer = "My reply is no."
	when 17 
		answer = "My sources say no."
	when 18 
		answer = "Outlook no so good."
	when 19 
		answer = "Very doubtful."
	end

#step 3 - text the answer
message = @client.account.messages.create(
	:from => "+15053124689",
	:to => "+15055043212", 
	:body => "#{answer}"
	)
puts answer
puts message.to
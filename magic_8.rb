require 'rubygems'
require 'twilio-ruby'

account_sid = "AC00cba4fc3dce9c3df64615bf02b828f9"
auth_token = "e579f58801c314b4d58986409babda53"

@client = Twilio::REST::Client.new(account_sid, auth_token)

#now that we're set up, we'll send ourself a message 
#message = @client.account.messages.create(
#	:from => "+15053124689",
#	:to => "+15055043212", 
#	:body => "Hello, this is your unstuck-in-time self."
#	)

#puts message.to

#and that worked! yay! 
#we'll want to modify that later, because...
#the next thing is making the magic 8 part 
#step 1 - accept a question, which means (texted?) user input. 

#step 2 - select a random answer from list of possible answers, so, random number generator and a loop thing 
#with this setup, answer shows in terminal, random number texted to phone 
answer = rand(20)
case (answer)
	when 0
		puts "It is certain."
	when 1 
		puts "It is decidedly so."
	when 2 
		puts "Without a doubt."
	when 3 
		puts "Yes, definitely."
	when 4 
		puts "You may rely on it."
	when 5 
		puts "As I see it, yes."
	when 6 
		puts "Most likely."
	when 7 
		puts "Outlook good."
	when 8 
		puts "Yes."
	when 9
		puts "Signs point to yes."
	when 10 
		puts "Reply hazy; try again."
	when 11 
		puts "Ask again later."
	when 12 
		puts "Better not tell you now."
	when 13 
		puts "Cannot predict now."
	when 14 
		puts "Concentrate and ask again."
	when 15 
		puts "Don't count on it."
	when 16 
		puts "My reply is no."
	when 17 
		puts "My sources say no."
	when 18 
		puts "Outlook no so good."
	when 19 
		puts "Very doubtful."
	end

#step 3 - text the answer, which will use the message coding above, with answer variable interpolated in body string 
message = @client.account.messages.create(
	:from => "+15053124689",
	:to => "+15055043212", 
	:body => "#{answer}"
	)
puts message.to
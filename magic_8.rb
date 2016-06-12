require 'rubygems'
require 'twilio-ruby'

account_sid = "AC00cba4fc3dce9c3df64615bf02b828f9"
auth_token = "e579f58801c314b4d58986409babda53"

@client = Twilio::REST::Client.new(account_sid, auth_token)

#now that we're set up, we'll send ourself a message 
message = @client.account.messages.create(
	:from => "+15053124689",
	:to => "+15055043212", 
	:body => "Hello, this is your unstuck-in-time self."
	)

puts message.to

#and that worked! yay! 
#we'll want to modify that later, because...
#the next thing is making the magic 8 part 
#step 1 - accept a question, which means texted user input. 
#step 2 - select a random answer from list of possible answers, so, random number generator and a loop thing 
#step 3 - text the answer, which will use the message coding above, with answer variable interpolated in body string 

#ask user to "give me a number"
#grab number and transform into integer (from string)
#set result to variable Number1
#add 5 to Number1
#multiply result by 2 
#subtract 4 
#divide by 2 
#subtract first number from final number 
#give final number

puts "Give me a number: "
Number1 = gets.to_i 
w = Number1
x = 5
y = 2 
z = 4 
w += x 
w *= y 
w -= z 
w /= y
w -= Number1
puts w
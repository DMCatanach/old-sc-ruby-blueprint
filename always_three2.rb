#ask user to "give me a number"
#grab number and transform into integer (from string)
#set result to variable Number1
#add 5 to Number1
#multiply result by 2 
#subtract 4 
#divide by 2 
#subtract first number from final number 
#give final number
#do with two variables

puts "Give me a number: "
Number1 = gets.to_i 
end_num = Number1 + 5 
end_num = end_num * 2 
end_num = end_num - 4 
end_num = end_num / 2 
end_num = end_num - Number1
puts end_num

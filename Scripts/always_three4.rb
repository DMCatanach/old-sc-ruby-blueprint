puts "Give me a number: "
Number = gets.to_i
def always_three
	final_num = ((((Number + 5) * 2) - 4) / 2) - Number
	puts final_num
end 

#alternate method, with user input within method: 
#def always_three
#	puts "Give me a number: "
#	first_num = gets.to_i
#	puts "Always " + (((first_num + 5) * 2 - 4) / 2 - first_num).to_s
#end

always_three
puts "Give me a number: "
Number = gets.to_i
def always_three()
	final_num = ((((Number + 5) * 2) - 4) / 2) - Number
	puts "Always #{final_num}"
end 

always_three
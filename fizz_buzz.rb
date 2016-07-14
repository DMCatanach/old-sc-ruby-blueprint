#much like a thing we did in the php class, day 2 i think 
#while loop to iterate over numbers up to & including 100, fizzing and buzzing on multiples of 3 and 5 respectively 

counting_number = 0
while (counting_number <= 100)
	if (counting_number %3 == 0 && counting_number %5 == 0)
		puts "Fizz Buzz"
	elsif (counting_number %3 == 0)
		puts "Fizz"	
	elsif (counting_number %5 == 0)
		puts "Buzz"
	else
		puts counting_number
	end
	counting_number += 1
end
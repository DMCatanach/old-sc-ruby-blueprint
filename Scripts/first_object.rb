class Horse 
	def set_name=(horse_name)
		@name = horse_name
	end

	def get_name 
		return @name 
	end 

	def set_owner=(owner_name)
		@owner_name = owner_name
	end 

	def get_owner 
		return @owner_name
	end 

	def neigh 
		return "Neeeeeeiiigh!"
	end 
end

my_horse = Horse.new
my_horse.set_name = "Fortune's Fool"
horsename = my_horse.get_name
puts "#{horsename} says #{my_horse.neigh}"
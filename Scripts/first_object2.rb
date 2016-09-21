class Horse 
	attr_accessor :name, :owner_name

	def neigh 
		return "Neeeeeeiiigh!"
	end 
end

my_horse = Horse.new
my_horse.name = "Fortune's Fool"
horsename = my_horse.name
puts "#{horsename} says #{my_horse.neigh}"
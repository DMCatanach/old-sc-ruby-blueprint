#It seems easy to leave things out when using the same definitions over and over. 
#So why not combine these into one class, like so:
class Pet 
	def set_kind= (animal_kind)  #I added the "kind" attribute, in case we want to get specific here. 
		@kind = animal_kind
	end

	def get_kind  #here, getters and setters include "get" and "set" in the variable names for clarity, but they don't have to 
		return @kind
	end

	def set_name= (animal_name)
	 	@name = animal_name
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

#I've included all the animal sound methods, so we can call any of them later 
	def squeal  
		return "squeeeeee"
	end

	def squeek
		return "eeeep"
	end

	def tweet
		return "squawk"
	end
end

#I've fixed the mistakes in our original classes, so they work, but I've commented them out 
#because we don't really need all of them with the new, overarching class. 

#class Ferret 
 
#	def set_name= (ferret_name)
#		@name = ferret_name
#	end
 
#	def get_name
#		return @name
#	end
 
#	def set_owner=(owner_name)
#		@owner_name = owner_name
#	end
 
#	def get_owner
#		return @owner_name
#	end
 
#	def squeal
#		return "squeeeeee"
#	end
 
#end

#class Chincilla
 
#	def set_name=(chinchilla_name)
#		@name = chinchilla_name
#	end

#	def get_name
#		return @name
#	end
 
#	def set_owner=(owner_name)
#		@owner_name = owner_name
#	end
 
#	def get_owner
#		return @owner_name
#	end
 
#	def squeek
#		return "eeeep"
#	end
 
#end

#class Parrot
 
#	def set_name=(parrot_name)
#		@name = parrot_name
#	end
 
#	def get_name
#		return @name
#	end
 
#	def set_owner=(owner_name)
#		@owner_name = owner_name
#	end
 
#	def get_owner
#		return @owner_name
#	end

#	def tweet
#		return "squawk"
#	end
 
#end
 
#my_ferret = Ferret.new
#my_ferret.set_name= "Fredo"
#ferretname = my_ferret.get_name
 
#my_parrot = Parrot.new
#my_parrot.set_name= "Budgie"
#parrotname = my_parrot.get_name
 
#my_chincilla = Chincilla.new
#my_chincilla.set_name= "Dali"
#chincillaname = my_chincilla.get_name

#Here I've used the new object class to create new instances of pets

my_ferret = Pet.new
my_ferret.set_name = "Fredo"
ferretname = my_ferret.get_name 

my_parrot = Pet.new
my_parrot.set_name = "Budgie"
parrotname = my_parrot.get_name

my_chincilla = Pet.new
my_chincilla.set_name = "Dali"
chincillaname = my_chincilla.get_name
 
puts "#{ferretname} says #{my_ferret.squeal}, 
#{parrotname} says #{my_parrot.tweet}, 
and #{chincillaname} says #{my_chincilla.squeek}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect







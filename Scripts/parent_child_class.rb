class Artist

	def set_name= (artist_name)
		@name = artist_name
	end

	def get_name
		return @name
	end

	def set_work= (famous_work)
		@work = famous_work
	end

	def get_work 
		return @work
	end

	def set_time (years_active)
		@time = years_active
	end

	def get_time
		return @time
	end

	def set_genre= (artist_genre)
		@genre = artist_genre
	end

	def get_genre 
		return @genre
	end

end 

class Dancer < Artist 

	def set_style= (dance_style)
		@style = dance_style
	end

	def get_style 
		return @style 
	end

end

class Musician < Artist

	def set_instrument= (instrument_played)
		@instrument = instrument_played
	end

	def get_instrument 
		return @instrument
	end

end

class Painter < Artist

	def set_medium= (artist_medium)
		@medium = artist_medium
	end

	def get_medium 
		return @medium
	end
	
end

surrealist_guy = Painter.new 
surrealist_guy.set_name = "Salvador Dali"
surrealistname = surrealist_guy.get_name
surrealist_guy.set_medium = "oils"
surrealistmedium = surrealist_guy.get_medium

puts "#{surrealistname} was an artist who used #{surrealistmedium}."

puts surrealist_guy.inspect 

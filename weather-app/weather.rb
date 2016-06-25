require 'barometer'

#temperature.f gives temp in Fahrenheit; default is celsius
#current.condition gives current conditions, .condition doesn't seem to work with .forecast, .today, .tomorrow
#can use .high, .low with .today and .tomorrow
#still don't know what info can get with .forecast

#method to determine weather in user's location
def get_weather
	
	puts "What is your current location?"
	user_location = gets.chomp
	barometer = Barometer.new(user_location)
	weather = barometer.measure
	current_weather = weather.current.condition.to_s
	puts "Right now, it is #{current_weather.downcase}."
	
end

#get_weather

barometer = Barometer.new('Albuquerque')
weather = barometer.measure
puts weather.inspect
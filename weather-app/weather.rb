require 'yahoo_weatherman'

puts "Please enter your zip code for the weather: "

loc = gets.chomp

client = Weatherman::Client.new
response = client.lookup_by_location(loc).forecasts

i = 0
while i < response.length 
	whash = response[i]
	if i == 0 
		day = "Today" 
	elsif i ==1
		day = "Tomorow"  
	else 
		day = whash['date']::strftime('%A, %b, %d')
	end
		
	puts "#{day}, the low will be #{whash['low']} degrees, the high will 
	be #{whash['high']} degrees, and you can expect #{whash['text']}"
	i += 1
end 



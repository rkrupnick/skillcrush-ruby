require 'yahoo_weatherman'
require 'sinatra'




# Set up gem to retrieve forecasts
def get_forecast(location)
	client = Weatherman::Client.new
	@response = client.lookup_by_location(location).forecasts
end

# loop through forecasts and format
def format_forecast(forecast)
	i = 0
	cast = []
	while i < @response.length 
		whash = response[i]
		if i == 0 
			day = "Today" 
		elsif i ==1
			day = "Tomorow"  
		else 
			day = whash['date']::strftime('%A, %b, %d')
		end
			
		cast[i] = "#{day}, the low will be #{whash['low']} degrees, the high will 
		be #{whash['high']} degrees, and you can expect #{whash['text']}"
		i += 1
	end 
end


get '/' do
	erb :form
end

post '/' do
	loc = params[:loc]
	redirect "/forecast/#{loc}"
end

get '/forecast/:loc' do
	loc = params[:loc]
	fiveday = get_forecast(loc)
	@forecast = format_forecast(fiveday)
	erb :home
end
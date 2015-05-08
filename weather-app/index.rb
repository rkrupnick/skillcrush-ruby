require 'yahoo_weatherman'
require 'sinatra'


def get_forecast(zipcode)
	client = Weatherman::Client.new
	response = client.lookup_by_location(zipcode).forecasts
	i = 0
	forecast = []
	while i < response.length 
		whash = response[i]
		if i == 0 
			day = "Today" 
		elsif i ==1
			day = "Tomorow"  
		else 
			day = whash['date']::strftime('%A, %b, %d')
		end
			
		forecast[i] = "#{day}, the low will be #{whash['low']} degrees, the high will 
		be #{whash['high']} degrees, and you can expect #{whash['text']}"
		i += 1
	end 
end




get '/' do 
	erb :form
end

post '/' do
	loc = params[:loc]
	redirect '/forecast/#{loc}'
end

get '/forecast/:loc' do
	loc = params[:loc]
	@forecasts = get_forecast(loc)
end
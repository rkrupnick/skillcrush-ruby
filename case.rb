puts "What's it like outside?"
weather = gets.chomp
case weather
when 'snow'
	puts "Bundle up!"
when 'rain'
	puts "Rainjacket and boots!"
when 'sunny'
	puts "Where are you, California? It's February..."
when 'stormy'
	puts "Stay inside."
else 
	puts "Use your better judgement. Naked is not an option."
end
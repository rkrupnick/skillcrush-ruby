require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.marthastewart.com/312598/brick-pressed-sandwich'))

ingredients = doc.css('.components-data')

puts "Ingredients for Brick Pressed Sandwich\n\n".center(50, '**~**')

ingredients.each do |i|
	puts i.inner_html.strip.center(65, "~")
end

puts "\n\n"
puts "Enjoy!".center(65, ".-|-.")
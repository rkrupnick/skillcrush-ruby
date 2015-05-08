class Pet

	def get_name
		return @name
	end

	def get_color
		return @color
	end
end

class Kitty < Pet

	def set_name=(kitty_name)
		@name = kitty_name
	end

	def set_color=(kitty_color)
		@color = kitty_color
	end

	def happy_kitty
		return "*Rubs head on human* 'Purr!'"
	end

	def hungry_kitty
		return "'Meow!!'"
	end
end 

class Kitten < Kitty

	def set_cute_index=(cute_index)
		@cindex = cute_index
	end

	def get_cute_index
		return @cindex
	end
end


my_kitty = Kitty.new
my_kitty.set_name = "Ally"
kitty_name = my_kitty.get_name
my_kitty.set_color = "Black and White"
kitty_color = my_kitty.get_color

my_kitten = Kitten.new
my_kitten.set_name = "Brady"
kitten_name = my_kitten.get_name
my_kitten.set_color = "Black (With a white tipped tail!)"
kitten_color = my_kitten.get_color
my_kitten.set_cute_index = 10
cindex = my_kitten.get_cute_index

puts "I have a #{kitty_color} kitty, named #{kitty_name}. \n
When #{kitty_name} is happy, she: \n
#{my_kitty.happy_kitty} \n
When she is hungry, \n
#{my_kitty.hungry_kitty} \n"
puts "\nSimilar to #{kitty_name}, I have a #{kitten_color} kitten, #{kitten_name}. \n 
(who is so cute, #{cindex} out of 10!) \n 
When #{kitten_name} is happy, she: \n
#{my_kitten.happy_kitty} \n
When she is hungry,\n
 #{my_kitten.hungry_kitty}"
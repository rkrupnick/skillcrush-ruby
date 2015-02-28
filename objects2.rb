class Kitty
	attr_accessor :name

	def happy_kitty
		return "*Rubs head on human* 'Purr!'"
	end

	def hungry_kitty
		return "'Meow!!'"
	end
end

my_kitty = Kitty.new
my_kitty.name = "Ally"
puts my_kitty.inspect
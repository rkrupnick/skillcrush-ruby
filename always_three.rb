#Define method with one argument

def always_three(num)
	# Do the math!
	(((((num + 5) * 2) - 4) / 2) - num)
end

# ask for a number
puts "Give me a number:"
# convert number to integer and set to variable
input_num = gets.to_i

# print result
# call method
# convert to string
puts "The result is always " + always_three(input_num).to_s
#Define method with one argument

def always_three(num)
	# Do the math!
	firstnum = num
	puts "#{num} + 5 = #{num+5}"
    num += 5
    puts "#{num} * 2 = #{num*2}"
    num *= 2
    puts "#{num} - 4 = #{num-4}"
    num -= 4
    puts "#{num} / 2 = #{num/2}"
    num /= 2
    puts "#{num} - your original number of #{firstnum} = #{num-firstnum}"
    num -= firstnum
end

# ask for a number
puts "Give me a number:"
# convert number to integer and set to variable
input_num = gets.to_i

# print result
# call method
# convert to string
puts "The result is always " + always_three(input_num).to_s
# Set variable to range of numbers
num = 1..100

# Iterate over each number in the range
num.each do |count|
	# figure out if the number is divisible by 3
	if count % 3 == 0
		# If it is, also check for divisibility by 5
		if count % 5 == 0
			# If so, print Fizzbuzz
			puts "FizzBuzz"
			# If not, just print Fizz
		else 
			puts "Fizz"
		end
		# Check if divivisible by 5
	elsif count % 5 == 0
		# if so, print Buzz
		puts "Buzz"
	else 
		# If no conditions are met, print the number
		puts count
	end
end
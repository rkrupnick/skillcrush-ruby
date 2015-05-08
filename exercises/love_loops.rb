#  Ask the important questions
puts "Are you a friend, lover, or family member?"

# Assign input to variable
answer = gets.chomp.downcase

while (answer == "yes")
	puts "I love you!\n"

	#  Ask the important questions
	puts "Are you a friend, lover, or family member?"

	# Assign input to variable
	answer = gets.downcase
end



# Determine birth path number
def birth_number(bdate)
	# Access the integers via array syntax and add them all together
	number = bdate[0].to_i + bdate[1].to_i + bdate[2].to_i + bdate[3].to_i + bdate[4].to_i + bdate[5].to_i + bdate[6].to_i + bdate[7].to_i
	# Convert to string to access array syntax again
	number = number.to_s
	# Add together the two digits
	number = number[0].to_i + number[1].to_i
	# If the result is still two digits, add together again
	if number > 9
	number = number.to_s
	number = number[0].to_i + number[1].to_i
	end	

	return number
end

# Determine birth path message
def birth_message(number)
	
	case number
	when 1
		message = "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when 2
		message = "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		message =  "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		message =  "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 5
		message =  "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6
		message =  "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 7
		message =  "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8
		message =  "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 9
		message =  "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	end
end

# Ask user for birthdate MMDDYYYY
puts "Please enter your birthday (don't worry, I won't tell anyone how old you are!) formatted like this: MMDDYYYY: "

# Set response to a variable
bdate = gets

# Get the birth path number from the method
number = birth_number(bdate)

# Get the birth path message from it's method
message = birth_message(number)

# Tell the user their number and message
puts "Your numerology number is #{number}, and your birth path is:\n #{message}"
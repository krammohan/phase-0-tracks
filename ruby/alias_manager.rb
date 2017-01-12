# Accept str and convert to string and lowercase and split into two words
# Swap the first and last name
# Initialize strings "vowels" and "consonants"
# Split last name and first name into arrays of letters
# For all of the letters in last name
	# If the current letter is a e i o u
		# Then set that letter in the last name equal to the next vowel
	# Otherwise
		# Set that letter in the last name equal to the next consonant
# For all of the letters in first name
	# If the current letter is a e i o u
		# Then set that letter in the first name equal to the next vowel
	# Otherwise
		# Set that letter in the first name equal to the next consonant
# Join the letters of the first name and last name
# Join the entire first name and entire last name

def codeName (str)
	str = str.to_s.downcase.split(' ')
	k = str[0]
	str[0] = str[1]
	str[1] = k
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	
	lastName = str[0].chars
	firstName = str[1].chars
	
	for i in 0..(lastName.length-1)
		if lastName[i] == "a" || lastName[i] == "e" || lastName[i] == "i" || lastName[i] == "o" || lastName[i] == "u"
			lastName[i] = vowels[vowels.index(lastName[i])+1]
		else
			lastName[i] = consonants[consonants.index(lastName[i])+1]
		end
	end
	
	for i in 0..(firstName.length-1)
		if firstName[i] == "a" || firstName[i] == "e" || firstName[i] == "i" || firstName[i] == "o" || firstName[i] == "u"
			firstName[i] = vowels[vowels.index(firstName[i])+1]
		else
			firstName[i] = consonants[consonants.index(firstName[i])+1]
		end
	end
	str[0] = lastName.join('').capitalize
	str[1] = firstName.join('').capitalize
	str.join(' ')
	
end

# Initialize empty hash
# Prompt user for name in loop and convert to string
	# If the case is the user types "quit"
		# Break
	# Otherwise 
		# Create new entry in hash with key = original name and value = name with codeName applied

# For each entry in the hash table with (key, value) pairs
	# Print out the original and the code name

nameHash = {}
puts "Enter your name"
while origName = gets.chomp.to_s
	case origName
	when "quit"
		puts "Ok!"
		break
	else
		nameHash[origName] = codeName(origName)
	end
end

nameHash.each do |key, value|
	puts "#{key} is actually #{value}!"
end
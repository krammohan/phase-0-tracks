def blockmethod
	puts "Before running the block"
	yield("Jogging", "Sprinting")
	yield("Running", "Walking")
	puts "After running the block"
end

blockmethod { |action1, action2| puts "#{action1} and #{action2} the block" }

# Array
pets = ["Cat", "Dog", "Rat", "Rabbit", "Snake", "Bird"]

puts "Original data: "
p pets

pets.each do |pet|
	puts pet
end

puts "After .each call: "
p pets

puts "Original data: "
p pets

pets.map! do |pet|
	puts pet
	pet.upcase
end

puts "After .map! call: "
p pets

clothes = {'shirt' => 'red', 'pants' => 'blue', 'hat' => "green"}

puts "Before .each call: "
p clothes

clothes.each do |item, color|
	puts "The #{item} is #{color}."
end

puts "After .each call: "
p clothes

# ARRAY METHODS 
#1
	digits1 = [0,1,2,3,4,5,6,7,8,9]
	result1 = digits1.delete_if {|n| n < 5}
	puts result1

#2 
	digits2 = [0,1,2,3,4,5,6,7,8,9]
	result2 = digits2.select do |elem|
		elem < 5
	end
	puts result2

#3
	digits3 = [0,1,2,3,4,5,6,7,8,9]
	result3 = digits3.reject {|elem| elem % 2 == 0}
	puts result3
	
#4
	digits4 = [0,1,2,3,4,5,6,7,8,9]
	result4 = digits4.delete_if {|elem| elem*2 >= 12}
	puts result4

# HASH METHODS	

#1
	numbers = {'one' => 'uno', 'two' => 'dos', 'three' =>'tres', 'four' => 'cuatro'}
	numbers.delete_if {|english, spanish| english == 'two'}
	puts numbers
	
#2
	numbers2 = {'one' => 'uno', 'two' => 'dos', 'three' =>'tres', 'four' => 'cuatro'}
	result = numbers2.select { |k,v| ['one', 'two'].include?(k) }
	puts result

#3 
	result4 = numbers2.reject {|k,v| !['three', 'four'].include?(k)}
	puts result4

#4
	numbers3 = {'1' => 'uno', '2' => 'dos', '3' =>'tres', '4' => 'cuatro'}
	result5 = numbers3.delete_if {|digit, spanish| digit.to_i > 2}
	print result5
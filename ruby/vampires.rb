puts "How many employees will be processed?"
number = gets.chomp
number = number.to_i
i = 0

while i < number

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp
age = age.to_i

puts "What year were you born?"
year = gets.chomp
year = year.to_i

checkAge = 2017 - year

check = 0
if checkAge == age
	check = true
else
	check = false
end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp
if garlic == "no"
	garlicBool = false
elsif garlic == "yes"
	garlicBool = true
end

puts "Would you like to enroll in the company's health insurance?"
health = gets.chomp
if health == "no"
	healthBool = false
elsif health == "yes"
	healthBool = true
end

puts "Any allergies?"
i = 0
allergy = 0
until allergy == "sunshine"
	allergy = gets.chomp
	i+=1
end
if allergy == "sunshine"
	print "Probably a vampire\n"
end	

if check==true && (garlicBool==true || healthBool==true)
	print "Probably not a vampire\n"
elsif check==false && (garlicBool==false || healthBool == false)
	print "Probably a vampire\n"
elsif check==false && garlicBool==false && healthBool==false
	print "Almost certainly a vampire\n"
elsif name = "Drake Cula" || name = "Tu Fang"
	print "Definitely a vampire\n"
else
	print "Results inconclusive\n"
end

i+=1
end

print "Actually, never mind! What do these questions have to do with anything? Let's all be friends.\n"
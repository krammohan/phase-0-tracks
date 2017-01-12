#Ask for name and save as string variable
#Ask for age and save as int variable
#Ask for number of children and save as int variable
#Ask for decor theme and save as string variable
#Ask if eligible for discount and save as variable
	#If user enters "yes" then save discount var as "true"
	#Else if user enters "no" then save discount var as "false"
#Create hash of client with keys
	#name is the client name var
	#age is the client age var
	#num children is the client num children
	#decor theme is the client decor theme
	#eligible for discount is true or false
#Print client
#Ask if want to change any keys and save response as var
#Ask for value of the key and save value as var
#If response is "none" then print message and skip
#Otherwise convert response to new key and save value as it's value
#Print new client 

puts "Hello! What is your name?"
client_name = gets.chomp.to_s
puts "Your age?"
client_age = gets.chomp.to_i
puts "How many children do you have?"
client_num_children = gets.chomp.to_i
puts "Which decor theme would you like?"
client_decor_theme = gets.chomp.to_s
puts "Are you eligible for a discount?"
client_eligible_discount = gets.chomp

if client_eligible_discount == "yes"
	client_eligible_discount = "true"
elsif client_eligible_discount == "no"
	client_eligible_discount = "false"
end

client = {
	:name => client_name,
	:age => client_age,
	:num_children => client_num_children,
	:decor_theme => client_decor_theme,
	:eligible_discount => client_eligible_discount
}


p client

puts "Enter any keys you would like to change, or enter none."
response = gets.chomp
puts "What is the value for the key?"
value = gets.chomp
if response == "none" 
	puts "Okay!"
else
	client[response.to_sym] = value
end

p client
	
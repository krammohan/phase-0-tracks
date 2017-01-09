# encrypt
	#convert input to string type
	#define original string
	#set variable to be length of the string
	#loop through input string
		#if the element in input string is an a, then make it z
		#else the element in input string is in the original string
			#then set that element equal to the next element in the original string
		#print the new string

# decrypt
	#convert input to string type
	#define original string
	#set variable to be length of the string
	#loop through input string
		#if the element in input string is an z, then make it a
		#else the element in input string is in the original string
			#then set that element equal to the previous element in the original string
		#print the new string
		
def encrypt (str)
	str = str.to_s
	orig = "abcdefghijklmnopqrstuvwxyz"
	k=0
	k = str.length - 1
	for j in 0..k
		if orig.index(str[j]) == 25
			str[j] = "a"
		else
			str[j]=orig[orig.index(str[j])+1]
		end
	end
	puts "#{str}"
end

def decrypt (str)
	str = str.to_s
	orig = "abcdefghijklmnopqrstuvwxyz"
	k=0
	k = str.length - 1
	for j in 0..k
		if orig.index(str[j]) == 0
			str[j] = "z"
		else
			str[j]=orig[orig.index(str[j])-1]
		end
	end
	puts "#{str}"
end

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")	

#decrypt(encrypt("swordfish"))

#Ask user for encrypt or decrypt and store result
#Ask user for password
#If user wanted to encrypt, use encrypt algorithm
#Else if user wanted to decrypt, use decrypt algorithm
puts "Would you like to encrypt or decrypt a password?"
choice = gets.chomp
puts "What is the password?"
pw = gets.chomp
if choice == "encrypt"
	encrypt(pw)
elsif choice == "decrypt"
	decrypt(pw)
end


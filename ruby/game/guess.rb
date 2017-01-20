class Guess
  #set accessing permissions
  attr_accessor :word, :empty
  
  #initializing method which takes in a word as input and initializes an empty array
  def initialize(word)
  	@word = word.chars
  	@empty = []
  end
  
  #create an array of dashes that represent the number of letters in the word
  def make_empty
  	for i in 0..@word.length-1
  		@empty[i] = "-"
  	end
  	@empty.join('')
  end
  
  #check if the word includes a given letter
  #if it has the letter, delete the dash in the dash array and insert the correctly guessed letter in its place
  #if it doesn't then print out a message saying it's a wrong guess
  #join the dashes array together into a string
  def check_letter(letter)
  		if @word.include?(letter)
  			@empty.delete_at(@word.index(letter))
  			@empty.insert(@word.index(letter), letter)
  		else
  			puts "That letter is not in the word!"
  		end
  	@empty.join('')
  end
  
  #check if the player has won yet or not
  #check this by testing if the dashes array includes any dashes still
  #if it does, then they have not won
  #if it does not, then they have won
  def check_status
		if @empty.include?("-")
			true
		else
			false
		end
  end
  
  #get the length of the word to guess
  def get_length
  	@word.length
  end
  			
  
end

#ask user for word, and if it is not nil then remove any extra whitespace
puts "User 1, enter a word for User 2 to guess:"
word = gets
word ||= ''
word.chomp!

#create a new Guess instance and create a dashes array as long as the word's length
game = Guess.new(word)
game.make_empty

#ask user 2 to guess letters
puts "User 2, you have #{game.get_length*2} chances to guess a letter!"

#while they still have guesses left, keep asking user 2 for letters to guess
#only do this if they have not won yet
#if they win and there are no dashes in the dashes array, then they have won! and break
for i in 0..(game.get_length-1)*2
	if game.check_status == true
		puts "Guess a letter:"
		letter = gets
		letter ||= ''
		letter.chomp!
		puts game.check_letter(letter)
	elsif game.check_status == false
		puts "You win!"
		break
	end
end

#if at the end of their guesses there are still dashes, then they have lost
if game.check_status == true
	puts "You lose!"
end


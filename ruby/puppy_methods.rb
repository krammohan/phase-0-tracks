class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(num)
  	num = num.to_i
  	for i in 0..num-1
  		puts "Woof!"
  	end
  end
  
  def roll_over
  	puts "*rolls over*"
  end
  
  def dog_years(num)
  	dog_age = num.to_int/7
  	return dog_age
  end
  
  def go_sleep(hours)
  	puts "Goodnight! I'm going to nap for #{hours} hours."
  end
  
  def initialize
  	puts "Initializing new puppy instance..."
  end

end

doug = Puppy.new
doug.fetch("toy")
doug.speak(10)
p doug.dog_years(70)
doug.go_sleep(3)

class Book
	
  def initialize
    puts "Initializing a new book instance..."
  end
  
  def turn_to(page)
  	puts "Turning to page #{page}."
  end
  
  def read(chapters)
  	chapters = chapters.to_i
  	for i in 1..chapters
  		puts "Reading chapter #{i}"
  	end
  end

end

arr = []
for i in 0..49
	arr[i] = Book.new
end

arr.each { |i|
	i.turn_to(113)
	i.read(11)
}


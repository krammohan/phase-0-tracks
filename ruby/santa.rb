class Santa

	attr_reader :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age
	
	def initialize (gender, ethnicity)
		puts "Initializing new Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!"
	end
	
	def celebrate_birthday
		@age = age + 1
	end
	
	def get_mad_at(reindeer)
		place = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(place))
	end
	
end

#santa = Santa.new
#santa.speak
#santa.eat_milk_and_cookies("chocolate chip cookie")

santa1 = Santa.new("female", "black")
santa1.celebrate_birthday
puts santa1.age
santa1.gender = "male"
puts santa1.gender
puts santa1.ethnicity
santa1.get_mad_at("Vixen")
puts santa1.reindeer_ranking

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["Native American", "African", "Italian", "Mexican", "Indian", "Spanish", "Mixed"]

1000.times do |i|

  santas = Santa.new(genders.sample, ethnicities.sample)
  santas.age = rand(0...140)
  puts santas.gender
  puts santas.ethnicity
  puts santas.age
  
end



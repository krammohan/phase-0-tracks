puts "What is the hamster's name?"
name = gets.chomp

puts "What is the volume level? Enter a number from 1-10"
volume = gets.chomp
volume = volume.to_i

puts "What is the fur color?"
color = gets.chomp

puts "Is the hamster a good candidate for adoption?"
adopt = gets.chomp

puts "Estimated age?"
age = gets.chomp

if age.empty?
  age = nil
end

puts "Hamster's name is #{name}, its volume level is #{volume}, its color is #{color}, it is a good candidate for adoption: #{adopt}, and its age is #{age}"

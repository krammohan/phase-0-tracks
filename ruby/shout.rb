=begin
module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  
  def self.yelling_happily(words)
  	words + "!!!" + " :D"
  end
  
end

puts Shout.yell_angrily("you suck")
puts Shout.yelling_happily("I love you")
=end

module Shout

  def yell_angrily(words)
    puts words + "!!!" + " :("
  end
  
  def yelling_happily(words)
  	puts words + "!!!" + " :D"
  end
  
end

class Parent
  include Shout
end

class Baby
  include Shout
end

mom = Parent.new
mom.yell_angrily("Clean your room")

baby = Baby.new
baby.yelling_happily("I love candy")
module Shout
  def yells_angrily(words)
    puts "#{words}! I'm angry!"
  end
  def yells_happily(words)
    puts "#{words}! I'm happy!"
  end
end

def baby
  include Shout
end

def parent
  include Shout
end

def person_on_roller_coaster
  include Shout
end

baby.yells_angrily("ah!")
parent.yells_happily("ah!")
person_on_roller_coaster.yells_happily("ah!")
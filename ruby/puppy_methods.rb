# Pairing on July 6, 2017 with Jane



class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times do
      puts "woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_age = human_years * 7
    return dog_age
  end

  def licks_your(string)
    puts "*licks your #{string}*"
  end

end


spot = Puppy.new
spot.fetch("toy")
spot.speak(4)
spot.roll_over
p spot.dog_years(5)
spot.licks_your("face")





class Eagle

  def initialize
    puts "Initializing new instance of Eagle class!"
  end

  def soar(height)
    puts "The eagle has ascended to #{height} feet."
  end

  def squak(country)
    puts "I love #{country}!!"
  end

end

eagles = []
50.times do |x|
  x = Eagle.new
  eagles << x
end
p eagles

eagles.each do |eagle|
  eagle.soar(rand(1000))
  eagle.squak("USA")
end



=begin
tweety = Eagle.new
tweety.soar(400)
tweety.squak("USA")
=end















Contact GitHub API Training Shop Blog About

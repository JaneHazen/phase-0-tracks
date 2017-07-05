class Santa
  attr_accessor :gender :age


  def initialize(gender, ethnicity)
    "Initializing Santa instance..."
    @Santa = "Sandy Claws"
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph","Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays, from #{@Santa}"
  end

  def eat_milk_and_cookies(cookie_type)
    "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(offender)
    @reindeer_ranking.each do |x|
      if x == offender
      @reindeer_ranking.insert(@reindeer_ranking.index(x), @reindeer_ranking.delete_at(8))
      end
    end
  end

end


@santas = []
@genders = ["female", "male", "gender fluid", "agender"]
@ethnicities = ["white", "black", "asian", "hispanic", "none"]

genders.length.times do |i|
  @santas << Santa.new(@genders[i], @ethnicities[i])
end

p santas

new_santa = Santa.new("genderless", "noethnicity")

new_santa.get_mad_at("Blitzen")

new_santa.gender = "Female"

def build_santas(x)
  x.times do |i|
    Santa.new(@genders[i],@ethnicities[i])
  end

end

build_santas(5)

p @santas

@santas.each do |x|
  x.age = rand(140)
end

p @santas
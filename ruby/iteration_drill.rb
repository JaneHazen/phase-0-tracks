# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies.each do |item|
  print "#{item} * "
end

# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?
# ----
def find_thing(thing)
  zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
  zombie_apocalypse_supplies.each do |item|
    if  item == thing
      print thing
    end
  end
end

p find_thing("compass")

# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.
# ----
zombie_apocalypse_supplies.each do |x|
  zombie_apocalypse_supplies.delete("hatchet")

end
p zombie_apocalypse_supplies


# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]


things_we_have = (zombie_apocalypse_supplies + other_survivor_supplies).uniq

p things_we_have


# ----


# Hash Drills

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
extinct_animals.each do |x,y|
  print "#{x} - #{y} * "
end


# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.
# ----
extinct_animals.each do |x,y|
  if y < 2000
  print "#{x} * "
  else extinct_animals.delete(x)
  end
end


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went ext


inct.
# ----

extinct_animals.each do |x, y|
  extinct_animals[x] = (y)- 3
end

p extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# animals = ["Andean Cat", "Dodo", "Saiga Antelope"]
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, animals)
# Iterate through the animals array using .each
# if the extinct animals hash has the animal as a key
# print out to consol this animal name was extinct on (date)
# else
# print this animal is still around
# ----

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
    }
animals = ["andean Cat", "Dodo", "Saiga Antelope"]

def is_it_dead(array, hash)

  array.each do |animal|
    if hash[animal] == nil
      p "#{animal.capitalize} is not extinct"
    else
      p "The #{animal} was gone by #{hash[animal]}.  "
    end
    # # if hash[:thing] == nil
    #   puts "It's not extinct"
    # else puts "it's extinct"
    # end

  end

end

puts is_it_dead(animals, extinct_animals)


# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each
# ----

def not_extinct(animal)
    extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
  }

new_hash = {}

  extinct_animals.each do |x, y|
    if animal == x
      new_hash.store(x, y)
      extinct_animals.delete(x)
    end

  end
     p new_hash
     p extinct_animals
end

not_extinct("Passenger Pigeon")

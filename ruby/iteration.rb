#  Release 0

def takes_a_block
  puts "Hello World"
  yield("diane", "jane")
end

takes_a_block{ |you1, you2|
  puts "HELLO #{you1}! And #{you2}!"
}
----------------

letters = ["a","b","c","d","e"]
new_letters = []
puts "Original data:"
p letters
p new_letters

letters.each do |letter|
  new_letters << letter.next
end

puts "After .each call:"
p letters
p new_letters

numbers = {1 => 'one', 2 =>'two', 3 => 'three'}

numbers.each do |digit, word|
  puts "#{digit} is spelled out as #{word}."
end

--------------

letters = ["a","b","c","d","e"]

puts "Original data:"
p letters

new_letters = letters.map do |letter|
  puts letter
  letter.next
end

puts "After .map call:"
p letters
p new_letters

----------
# Release 1

Actors = {

"Leonardo Dicaprio" => "Jack",
"Jennifer Lawrence" => "Katnis"

}

p Actors

Places = [
"Hollywood",
"New_Zealand"
 ]

p Places



Actors.each do |movie_star, character|
  puts "Most famous character of #{movie_star} is #{character}"
end

Places.each do |location|
  puts "#{location} is a good place to shoot a movie!"
end

Places.map! do |location|
   "your living room"
 end


Places.each do |location|
  puts "#{location} is a good place to shoot a movie!"
end

-----------
# Release 2

Array = [1, 4, 5, 6, 23, 54, 1, 3, 4, 6]
Hash = { "Celine Dion" => "My Heart Will Go On", "Jennifer Lawrence" => "The Hanging Tree", "R. Kelly" => "I Believe I Can Fly"}


Array.delete_if { |x| x < 30 }
p Array

Hash.delete_if { |x, y|
  y == "My Heart Will Go On"
}
p Hash

Array.select { |x|
  x > 30
}

p Array

p Hash.select { |singer, song|
  singer == "R. Kelly"
}

p Array.include?(54)

p Hash.include? ("Celine Dion")
# .include? doesn't work on hashes, but .any? does
p Hash.any? {"Celine Dion"}

Array = [1, 4, 5, 6, 23, 54, 1, 3, 4, 6]

Hash = { "Celine Dion" => "My Heart Will Go On", "Jennifer Lawrence" => "The Hanging Tree", "R. Kelly" => "I Believe I Can Fly"}

p Array
p Array.drop_while {|i| i < 4 }

p Hash
p Hash.drop_while {|singer, song| singer == "Jennifer Lawrence"}

# .drop_while didn't work for the hash
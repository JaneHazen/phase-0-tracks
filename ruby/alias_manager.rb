  puts "Type a name to get a secret alias. Type done to exit"
  name = gets.chomp
  hash_of_names = {}
until name == "done"

  #reverse the order of the names
  reverse_name = name.split(' ').reverse.join(' ')

  # replace the vowels with the next vowel in the line
  coded_name = reverse_name.tr("aeiouAEIOU", "uaeioUAEIO")

  puts "Your new alias is #{coded_name}."

  # put it in a filler hash to merge later
  filler_hash = {}
  filler_hash.merge!(name => coded_name)

  hash_of_names[name] = coded_name
  puts "Would you like to add another name? Type 'done' to exit"
  name = gets.chomp
end
  hash_of_names.merge!(filler_hash)
  first_key = hash_of_names.keys[0]
  first_value = hash_of_names.values[0]

puts "Thank you, #{first_key}... I mean #{first_value}!"

  hash_of_names.each do |name, coded_name|
    puts "The alias of #{name} is #{coded_name}."
  end


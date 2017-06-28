  puts "Type a name to get a secret alias. Type done to exit"
  name = gets.chomp
until name == "done"

  #reverse the order of the names
  reverse_name = name.split(' ').reverse.join(' ')

  # replace the vowels with the next vowel in the line
  coded_name = reverse_name.tr("aeiouAEIOU", "uaeioUAEIO")

  puts "Your new alias is #{coded_name}."
  hash_of_names = {name => coded_name}
  hash_of_names[name] = coded_name
  puts "Would you like to add another name? Type 'done' to exit"
  name = gets.chomp
end
puts "Thank you #{name}... I mean #{coded_name}"
p hash_of_names


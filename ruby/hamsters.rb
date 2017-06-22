puts "What is the hamster's name?"
hamster_name = gets.chomp.capitalize

puts "What is the hamster's volume level from 1 to 10?"
hamster_volume = gets.chomp.to_i

puts "What is the hamster's fur color?"
hamster_fur_color = gets.chomp.downcase

puts "Is the hamster a good candidate for adoption? (y/n)"
good_for_adoption = gets.chomp
if good_for_adoption == "y"
  good_for_adoption = "good"
else
  good_for_adoption = "bad"
end

puts "What is the hamster's age?"
hamster_age = gets.chomp.to_i
if hamster_age == " "
  hamster_age = nil
end

puts "#{hamster_name} has #{hamster_fur_color} fur with a volume of #{hamster_volume}.  #{hamster} is #{hamster_age} years old and is #{good_for_adoption} for adoption."
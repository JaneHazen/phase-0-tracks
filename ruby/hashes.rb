# make a hash
client_form = {
  clientname: "Input Client's Name",
  :clientage => "Input Client's Age" ,
  :clientkids => "Input Number of Kids",
  :clientdecor => "Input Client's Decor Choice"
}

# get input for hash
  puts "Type the client's name:"
  name = gets.chomp
  client_form[:clientname] = name
  puts "Type the client's age:"
  age = gets.chomp
  client_form[:clientage] = age
  puts "Type the number of children the client has:"
  kids = gets.chomp
  client_form[:clientkids] = kids
  puts "Type the style of decor the client prefers:"
  decortheme = gets.chomp
  client_form[:clientdecor] = decortheme


# return hash info
p client_form

# edit stuff
loop do
puts "Would you like to edit this information? (y/n)"
want_to_edit = gets.chomp
  if want_to_edit.downcase == "y"
      puts "Which section would you like to edit? (name/age/kids/decor)?"
      response = gets.chomp
      puts "What would you like to put in place of the current information in the #{response} section?"
      change = gets.chomp
      if response.downcase == "name"
        client_form[:clientname] = change
        p client_form
      elsif response.downcase == "age"
        client_form[:clientage] = change
        p client_form
      elsif response.downcase == "kids"
        client_form[:clientkids] = change
        p client_form
      elsif response.downcase == "decor"
        client_form[:clientdecor] = change
        p client_form
      else
        puts "I didn't understand- go again?"
      end
    elsif want_to_edit.downcase == "n"
    puts "Thanks goodbye!"
    break
  else puts "I didn't understand"
  end

end
class String_Work
  $guess_array = []

  def String_to_hyphens(sentence_goals)
    sentence_goals.gsub(/[a-zA-Z]/,"-")
  end

  def Guess_in_sentence(sentence_goals, guess)
    $guess_array << guess
    sentence_array = sentence_goals.split("")
    sentence_array.map! do |x|
      if $guess_array.include?(x)
        x
      elsif x == " "
        " "
      else
        "-"
      end
    end
    sentence_array.join
  end

  def Are_we_done_yet(sentence_array)
    if sentence_array.include?("-")
      "You're an idiot! Try again, idiot!"
    else
      puts "WINNA!"
    end
  end

end

puts "Ready Player One: type out your secret sentence!"
secret_sentence = gets.chomp
puts "Alright scroll down... "
30.times {puts " " }

puts "Ready Player Two: This is what you're working with:"
string = String_Work.new
puts ""
puts string.String_to_hyphens(secret_sentence)
puts "Guess a letter, Player Two:"

letter_guess = gets.chomp
counter = 0

while  string.Are_we_done_yet(string.Guess_in_sentence(secret_sentence,letter_guess)) != "WINNA!" && counter < 5
  counter += 1
  puts string.Guess_in_sentence(secret_sentence, letter_guess)
  puts string.Are_we_done_yet(string.Guess_in_sentence(secret_sentence,letter_guess))
  print "You guessed #{counter} times, idiot. FYI you get 5 guesses."
  puts " "
  letter_guess = gets.chomp
end

if string.Are_we_done_yet(string.Guess_in_sentence(secret_sentence,letter_guess)) != "WINNA!"
  puts "This is too much. You're done. You lost."
end

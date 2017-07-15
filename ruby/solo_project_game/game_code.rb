# Make a method that will make the sentence that will be guessed print as hyphens
class String_Work
  def String_to_hyphens(sentence_goals)
    sentence_goals.gsub(/[a-zA-Z]/,"-")
  end

  def Guess_in_sentence(sentence_goals, guess)
    sentence_array = sentence_goals.split("")
    sentence_array.map! do |x|
      if x == guess
        guess
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
      "WINNA!"
    end
  end

end


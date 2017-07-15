# Make a method that will make the sentence that will be guessed print as hyphens
class String_Work
  def String_to_hyphens(sentence_goals)
    sentence_goals.gsub(/[a-zA-Z]/,"-")
  end
end
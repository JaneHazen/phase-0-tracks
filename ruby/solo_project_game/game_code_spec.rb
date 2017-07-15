require_relative 'game_code'

describe String_Work do

  it "changes a string into all hypens" do
      string = String_Work.new
      expect(string.String_to_hyphens("Jane")).to eq "----"
  end

  it "iterates sentence and changes guess with the rest printing as hyphens" do
      string = String_Work.new
      expect(string.Guess_in_sentence("aaa","a")).to eq "aaa"
  end

end

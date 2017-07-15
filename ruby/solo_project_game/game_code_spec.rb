require_relative 'game_code'

describe String_Work do
  it "changes a string into all hypens" do
      string = String_Work.new
      expect string.String_to_hyphens("Jane").to eq ----
    end
  end
end
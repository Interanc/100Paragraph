require 'codechallenge'


# "Introduction After considering the historic page and viewing the living. World with anxious solicitude the most melancholy emotions of sorrowful.".strip

describe String do

  describe ".strip" do
    context "remove all punctuation" do
      it "removes punctuation" do
        expect("Introduction After considering the historic page and viewing the living. World with anxious solicitude the most melancholy emotions of sorrowful.".strip).to match_array(["Introduction", "After", "considering", "the", "historic", "page", "and", "viewing", "the", "living", "World", "with", "anxious", "solicitude", "the", "most", "melancholy", "emotions", "of", "sorrowful"])
      end
    end
  end
end

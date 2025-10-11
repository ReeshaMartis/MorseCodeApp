require "rails_helper"

RSpec.describe MorseService do
  describe ".encode" do
    it "encodes text into morse code" do
      # call the class method directly
      result = MorseService.encode("SOS")
      expect(result).to eq("... --- ...")
    end
  end

  describe ".decode" do
    it "decodes morse code into text" do
      # call the class method directly
      result = MorseService.decode("... --- ...")
      expect(result).to eq("SOS")
    end
  end
end

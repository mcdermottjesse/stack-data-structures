require '../adjacent_chars.rb'

RSpec.describe AdjacentChars do
  describe "#remove_adjacent_chars_one" do
    context "when the string is leEeetcode" do
      subject { described_class.new.remove_adjacent_chars_one("leEeetcode") }
      it "returns the string without adjacent lowercase andf uppercase letters" do
        expect(subject).to eq("leetcode")
      end
    end

    context "when the string is RLlr" do
      subject { described_class.new.remove_adjacent_chars_one("RLlr") }
      it "returns an empty string" do
        expect(subject).to eq("")
      end
    end

    context "when the string is JjjesSSSsseee McDermOTtt" do
      subject { described_class.new.remove_adjacent_chars_one("JjjesSSSsseeeMcDermOTtt") }
      it "returns the string without adjacent lowercase andf uppercase letters" do
        expect(subject).to eq("jeeeeMcDermOt")
      end
    end
  end

  describe "#remove_adjacent_chars_two" do
    context "when the string is leEeetcode" do
      subject { described_class.new.remove_adjacent_chars_two("leEeetcode") }
      it "returns the string without adjacent lowercase andf uppercase letters" do
        expect(subject).to eq("leetcode")
      end
    end

    context "when the string is RLlr" do
      subject { described_class.new.remove_adjacent_chars_two("RLlr") }
      it "returns an empty string" do
        expect(subject).to eq("")
      end
    end

    context "when the string is JjjesSSSsseee McDermOTtt" do
      subject { described_class.new.remove_adjacent_chars_two("JjjesSSSsseeeMcDermOTtt") }
      it "returns the string without adjacent lowercase andf uppercase letters" do
        expect(subject).to eq("jeeeeMcDermOt")
      end
    end
  end
end

require '../min_string_length.rb'

RSpec.describe MinStringLength do
  describe "#solution_one" do
    subject {described_class.new.solution_one("BJKDKABJ")}
      it "return the number of characters where it's next letter is not it's next letter in the alphabet" do
        expect(subject).to eq(4)
      end
    end
    
    describe "#solution_two" do
      subject {described_class.new.solution_two("BJKDKABJ")}
      it "return the number of characters that are not a substring of AB or CD" do
        expect(subject).to eq(6)
      end
    end
  end

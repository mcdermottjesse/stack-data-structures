require '../valid_parenthesis.rb'

RSpec.describe ValidParenthesis do
  describe "#valid_stack?" do
    context "with an valid input" do
      subject { described_class.new.valid_stack?("([]{})") }
      it "returns true" do
        expect(subject).to be true
      end
    end

    context "with an invalid input" do
      subject { described_class.new.valid_stack?("([}}])") }
      it "returns false" do
        expect(subject).to be false
      end
    end
  end
end

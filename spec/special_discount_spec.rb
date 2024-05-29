require '../special_discount.rb'

RSpec.describe SpecialDiscount do
  describe "#final_prices_one" do
    subject { described_class.new.final_prices_one([4,7,1,9,4,8,8,9,4]) }
    it "returns the discounted prices" do
      expect(subject).to eq([3, 6, 1, 5, 0, 0, 4, 5, 4])
    end
  end

  describe "#final_prices_two" do
  subject { described_class.new.final_prices_two([4,7,1,9,4,8,8,9,4]) }
    it "returns the discounted prices" do
      expect(subject).to eq([3, 6, 1, 5, 0, 0, 4, 5, 4])
    end
  end
end

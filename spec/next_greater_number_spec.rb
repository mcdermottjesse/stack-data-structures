require '../next_greater_number.rb'

RSpec.describe NextGreaterNumber do
  describe "#solution_one" do
    subject {described_class.new.solution_one(nums1, nums2)}
    context "when the number arrays are [4,1,2], [1,3,4,2]" do
      let(:nums1) {[4,1,2]}
      let(:nums2) {[1,3,4,2]}
      it "returns an array of the greater numbers, otherwise returns -1" do
        expect(subject).to eq([-1,3,-1])
      end
    end

    context "when the number arrays are [2,4], [1,2,3,4]" do
      let(:nums1) {[2,4]}
      let(:nums2) {[1,2,3,4]}
      it "returns an array of the greater numbers, otherwise returns -1" do
        expect(subject).to eq([3, -1])
      end
    end
  end

  describe "#solution_two" do
    subject {described_class.new.solution_two(nums1, nums2)}
    context "when the number arrays are [4,1,2], [1,3,4,2]" do
      let(:nums1) {[4,1,2]}
      let(:nums2) {[1,3,4,2]}
      it "returns an array of the greater numbers, otherwise returns -1" do
        expect(subject).to eq([-1,3,-1])
      end
    end

    context "when the number arrays are [2,4], [1,2,3,4]" do
      let(:nums1) {[2,4]}
      let(:nums2) {[1,2,3,4]}
      it "returns an array of the greater numbers, otherwise returns -1" do
        expect(subject).to eq([3, -1])
      end
    end
  end
end
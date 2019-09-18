require "fibonacci"

describe Fibonacci::EvenFibonacci do
  describe("#even_number_sum") do
    it "should return the sum of even values based on 4_000_000 default limit" do
      expect(Fibonacci::EvenFibonacci.even_number_sum()).to eql(4613732)
    end

    it "should return the sum of even values based on limit set" do
      expect(Fibonacci::EvenFibonacci.even_number_sum(10)).to eql(10)
    end
  end
end
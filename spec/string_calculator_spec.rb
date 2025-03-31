require 'rspec'
require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    let(:string_calculator) { StringCalculator.new }

    it "returns 0 for an empty string" do
      expect(string_calculator.add("")).to eq(0)
    end

    it "returns the number itself when only one number is provided" do
      expect(string_calculator.add("1")).to eq(1)
    end

    it "returns sum of two numbers" do
      expect(string_calculator.add("1,5")).to eq(6)
    end

    it "handles multiple numbers" do
      expect(string_calculator.add("1,2,3,4,5,6,7,8,9,10")).to eq(55)
    end

    it "handles large input" do
      numbers = (1..1000).to_a.join(",") # "1,2,3,4,...,1000"
      expect(string_calculator.add(numbers)).to eq(500500) # Sum of first 1000 natural numbers
    end

    it "handles new lines between numbers" do
      expect(string_calculator.add("1\n2,3")).to eq(6)
    end

    it "supports different delimiters" do
      expect(string_calculator.add("//;\n1;2")) .to eq(3)
    end

    it "raises an exception for negative numbers" do
      expect { string_calculator.add("1,-2,3,-4") }.to raise_error("negative numbers not allowed -2,-4")
    end

    it "add numbers upto 1000" do
      expect(string_calculator.add("2,1000")).to eq(1002)
    end

    it "ignores numbers greater than 1000" do
      expect(string_calculator.add("2,1001")).to eq(2)
    end

    it "support delimiters with larger length with [] format" do
      expect(string_calculator.add("//[***]\n1***2***3")).to eq(6)
    end

    it "support multiple delimiters with [] format" do
      expect(string_calculator.add("//[*][%]\n1*2%3")).to eq(6)
    end

    it "support multiple delimiters with [] format and larger length" do
      expect(string_calculator.add("//[***][%%%]\n1***2%%%3")).to eq(6)
    end
  end
end

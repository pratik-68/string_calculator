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
  end
end

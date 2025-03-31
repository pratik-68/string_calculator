require 'rspec'
require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    let(:string_calculator) { StringCalculator.new }

    it "returns 0 for an empty string" do
      expect(string_calculator.add("")).to eq(0)
    end
  end
end

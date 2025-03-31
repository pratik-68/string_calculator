# String Calculator

This is a simple implementation of a String Calculator in Ruby, built using Test-Driven Development (TDD) principles. It allows the addition of comma-separated numbers, handling custom delimiters, multi-line input, and more.

## Features

1. **Empty string returns 0**  
2. **Single number returns the number itself**  
3. **Supports multiple numbers separated by commas or new lines**  
4. **Custom delimiters (single and multi-character) are supported**  
5. **Throws an exception if negative numbers are included**  
6. **Ignores numbers greater than 1000**

## Requirements

- Ruby
- RSpec for testing

## Installation

### 1. Clone the repository:

```bash
git clone git@github.com:pratik-68/string_calculator.git
cd string_calculator
```

### 2. Install dependencies:

```bash
gem install rspec
```

## Usage

### Running the tests with RSpec:

To run the tests and check the behavior of the `StringCalculator`, use the following command:

```bash
rspec
```

This will run the test suite and display the results in the terminal.

### Example usage:

```ruby
calculator = StringCalculator.new

puts calculator.add("")         # => 0
puts calculator.add("1")        # => 1
puts calculator.add("1,2")      # => 3
puts calculator.add("1\n2,3")   # => 6
puts calculator.add("//[***]\n1***2***3")  # => 6
puts calculator.add("//[*][%]\n1*2%3")     # => 6
```

## Test Cases

The following test cases are included:

1. **Empty string**: Returns `0`.
2. **Single number**: Returns the number.
3. **Comma-separated numbers**: Adds all numbers correctly.
4. **New line-separated numbers**: Adds numbers separated by new lines correctly.
5. **Custom delimiters**: Handles custom delimiters, both single and multi-character.
6. **Negative numbers**: Throws an exception if any negative number is encountered.
7. **Numbers greater than 1000**: Ignores numbers greater than 1000 in the sum.

## Example Test

To test the `add` method with a string containing multiple delimiters:

```ruby
string_calculator = StringCalculator.new
result = string_calculator.add("//[*][%]\n1*2%3")
puts result  # => 6
```

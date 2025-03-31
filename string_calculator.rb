class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = Regexp.escape(delimiter[2..])
    else
      delimiter = ","
    end

    num_array = numbers.split(/#{delimiter}|\n/).map(&:to_i)

    # Raise error for negative numbers
    negatives = num_array.select { |num| num < 0 }
    raise "negative numbers not allowed #{negatives.join(",")}" if negatives.any?

    # Return sum if negative numbers are not present
    num_array.sum
  end
end

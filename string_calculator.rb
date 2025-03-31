class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter_section, numbers = numbers.split("\n", 2)

      if delimiter_section[2] == "[" && delimiter_section[-1] == "]"
        delimiters = delimiter_section.scan(/\[(.*?)\]/).flatten
      else
        delimiters = [delimiter_section[2..]] # Single-character delimiter
      end
    end

    # Replace all delimiters with a common separator (",")
    delimiters.each { |delim| numbers.gsub!(delim, ",") } if delimiters
    num_array = numbers.split(/,|\n/).map(&:to_i)

    # Raise error for negative numbers
    negatives = num_array.select { |num| num < 0 }
    raise "negative numbers not allowed #{negatives.join(",")}" if negatives.any?

    # Ignore numbers greater than 1000
    num_array = num_array.reject { |n| n > 1000 }

    num_array.sum
  end
end

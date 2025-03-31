class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = Regexp.escape(delimiter[2..])
    else
      delimiter = ","
    end

    numbers.split(/#{delimiter}|\n/).map(&:to_i).sum
  end
end

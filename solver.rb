class Solver
  def factorial(int)
    raise ArgumentError, 'Factorial is not defined for negative numbers.' if int.negative?
    return 1 if int.zero?

    result = 1
    (1..int).each { |i| result *= i }
    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(int)
    if (int % 3).zero? && (int % 5).zero?
      'fizzbuzz'
    elsif (int % 3).zero?
      'fizz'
    elsif (int % 5).zero?
      'buzz'
    else
      int.to_s
    end
  end
end

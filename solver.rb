class Solver
  def factorial(int)
    raise ArgumentError, 'Factorial is not defined for negative numbers.' if int.negative?
    return 1 if int.zero?

    result = 1
    (1..int).each { |i| result *= i }
    result
  end
end

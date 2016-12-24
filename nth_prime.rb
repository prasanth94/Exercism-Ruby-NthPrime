module NthPrime
  def nth(number)
    raise ArgumentError, 'invalid number' if number.zero?
    return 2 if number == 1
    count = 1
    increment = 1
    while count < number
      increment += 2
      count += 1 if isPrime(increment)
    end
    increment
  end

  def isPrime(number)
    (2..number / 2).none? { |i| (number % i).zero? }
  end
end

class Prime
  extend NthPrime
end
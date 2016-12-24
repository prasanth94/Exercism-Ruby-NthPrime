module NthPrime
  def nth(number)
    raise ArgumentError, 'invalid number' if number.zero?
    count = 1
    while number > 0
      count += 1
      count = nextPrime(count)
      number -= 1
    end
    count
  end

  def nextPrime(number)
    isprime = false
    until isprime == true
      if isPrime(number)
        return number
      else
        number += 1
        isPrime(number)
      end
    end
  end

  def isPrime(number)
    (2..number / 2).none? { |i| (number % i).zero? }
  end
end

class Prime
  extend NthPrime
end
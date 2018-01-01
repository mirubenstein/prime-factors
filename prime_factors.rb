require 'prime'
class PrimeFactors
  def self.for(number)
    Prime.prime_division(number).flat_map { |prime, count| Array.new(count, prime) }
  end
end

# class Prime
#   def self.nth(number)
#     raise ArgumentError, 'There is no zeroith prime.' if number.zero?
#     max_to_check = number >= 6 ? (number * Math.log(number) + number * Math.log(Math.log(number))) : 13
#     (2..Math.sqrt(max_to_check)).each_with_object([nil, nil, *2..max_to_check]) do |num, primes|
#       (num**2..max_to_check).step(num) { |n| primes[n] = nil } if primes[num]
#     end
#   end
# end

# -[5, 17, 23, 461]
# [[5, 1], [17, 1], [23, 1], [461, 1]]

# What are the prime factors of 60?
#                                 Our first divisor is 2. 2 goes into 60, leaving 30.
#   2 goes into 30, leaving 15.  2 doesn't go cleanly into 15. So let's move on to our next divisor, 3.
#
#
# 3 goes cleanly into 15, leaving 5.  3 does not go cleanly into 5. The next possible factor is 4.
#   4 does not go cleanly into 5. The next possible factor is 5.
#
#
#   5 does go cleanly into 5.
#   We're left only with 1, so now, we're done.
#
#   Our successful divisors in that computation represent the list of prime factors of 60: 2, 2, 3, and 5.
#   You can check this yourself:
#                        2 * 2 * 3 * 5
# = 4 * 15
# = 60
# Success!

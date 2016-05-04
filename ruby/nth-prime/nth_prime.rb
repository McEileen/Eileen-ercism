class Prime

  def self.nth(n)
    raise ArgumentError.new if n == 0

    up_to = n * (Math.log(n) + 2)
    primes = (2..up_to).to_a
    primes.each {|num| primes.delete_if {|i| i > num && (i % num) == 0} }
    primes[n-1]

  end

end
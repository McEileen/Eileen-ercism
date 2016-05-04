class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    nums = [nil, nil, *2..limit]
    (2..Math.sqrt(limit)).each do |i|
      (i**2..limit).step(i){|m| nums[m] = nil} if nums[i]
    end
    nums.compact
  end

end
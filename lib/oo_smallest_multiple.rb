# Implement your object-oriented solution here!

class SmallestMultiple
  attr_reader :lcm

  def initialize(limit)
    @limit = limit
    @lcm = lcm
  end

  def lcm
    multiple = 1
    (2..@limit).each do |divisor|
      multiple *= divisor / gcd(multiple, divisor)
    end
    multiple
  end
end

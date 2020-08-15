# Implement your procedural solution here!

def smallest_multiple(limit)
  multiple = 1
  (2..limit).each do |divisor|
    multiple *= divisor / gcd(multiple, divisor)
  end
  multiple
end

def gcd(multiple, divisor)
  while divisor > 0
    multiple %= divisor
    return divisor if multiple == 0
    divisor %= multiple
  end
  multiple
end

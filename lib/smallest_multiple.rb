# Implement your procedural solution here!

def smallest_multiple(limit)
  multiple = 1
  (2...limit).each do |divisor|
    multiple *= divisor / gcd(multiple, divisor)
  end
  multiple
end

def gcm(multiple, divisor)

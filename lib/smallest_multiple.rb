# Implement your procedural solution here!

def smallest_multiple(limit)
  multiple = 1
  (2...limit).each do |d|
    multiple *= d / gcd(multiple, d)
  end 
  multiple
end


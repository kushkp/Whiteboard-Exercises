def digital_root(num)
  return num if num < 10

  tens = num / 10
  ones = num % 10

  digital_root(tens) + ones
end

p digital_root(116)

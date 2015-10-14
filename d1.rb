def digital_rootr(num)
  return num if num < 10

  tens = num / 10
  ones = num % 10

  digital_rootr(tens + ones)
end

def digital_rooti(num)
  res = num
  while res > 9
    res = digital_step(res)
  end

  return res
end

def digital_step(num)
  res = 0

  while num / 10 > 0
    res += num % 10
    num /= 10
  end

  res += num

  return res
end

def caesar_cipher
end

#tests

  p digital_rootr(166)
  p digital_rooti(166)

# move all zeros to end in O(n) time and O(1) memory
def move_zeros(array)
  arr = array
  z = arr.length - 1
  i = 0

  while i < arr.length && i < z
    if arr[i] == 0
      arr[i], arr[z] = arr[z], arr[i]
      z -= 1
    else
      i += 1
    end
  end

  arr
end

def look_and_say(arr)
  return [] if arr.empty?

  result = []
  i = 1
  current_val = arr[0]
  count = 1

  while i < arr.length
    if arr[i] == current_val
      count += 1
    else
      result << [count, current_val]
      current_val = arr[i]
      count = 1
    end

    i += 1
  end

  result << [count, current_val]
  result
end

# tests
# p move_zeros([2,3,4,5,6])
# p move_zeros([0,0,0,0,0])
# p move_zeros([2,0,4,6,0,0,4])
# p move_zeros([2,0,4,6,0,0])
# p move_zeros([0,0,4,6,0,0])

p look_and_say([1])
p look_and_say([1,1])
p look_and_say([2,1])
p look_and_say([1,2,1,1])

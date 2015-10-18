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

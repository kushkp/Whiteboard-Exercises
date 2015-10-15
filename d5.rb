def merge_sort(arr)
  return arr if arr.length < 2

  mid = arr.length / 2
  left = arr.take(mid)
  right = arr.drop(mid)

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted = []

  until left.empty? || right.empty?
    if left.first < right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  sorted.concat(left).concat(right)
end

def binary_search(arr, target)
  return nil if arr.length == 1 && arr[0] != target

  mid = arr.length / 2
  return mid if arr[mid] == target

  left = arr[1..mid]
  right = arr[mid + 1..-1]

  if target < arr[mid]
    binary_search(left, target)
  else
    pos_res = binary_search(right, target)
    pos_res.nil? ? nil : pos_res + mid + 1
  end
end

def productify(arr)
  products = Array.new(arr.length) { 1 }

  
end

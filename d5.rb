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
  #return nil if arr.empty?
  return nil if arr.length == 1 && arr[0] != target

  mid = arr.length / 2
  return mid if arr[mid] == target

  left = arr[1..mid] # arr.take(mid)
  right = arr[mid + 1..-1] # arr.drop(mid + 1)

  if target < arr[mid]
    binary_search(left, target)
  else
    pos_res = binary_search(right, target)
    pos_res.nil? ? nil : pos_res + mid + 1
  end
end

def productify(arr)
  products = Array.new(arr.length) { 1 }

  lower_prod = 1
  (0).upto(arr.length - 1) do |i|
    products[i] = products[i] * lower_prod
    lower_prod = lower_prod * arr[i]
  end

  upper_prod = 1
  (arr.length - 1).downto(0) do |i|
    products[i] = products[i] * upper_prod
    upper_prod = upper_prod * arr[i]
  end

  products
end

#tests

p productify([1,2,3,4]) # [24, 12, 8, 6]

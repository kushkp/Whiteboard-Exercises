require 'set'

# returns ___ sets
def subsets(arr)
  return [[]] if arr.empty?

  prev = subsets(arr.take(arr.length - 1))
  new_subs = prev.map do |sub|
    sub + [arr.last]
  end

  prev + new_subs
end

def fast_intersection(arr1, arr2)
  set1 = Set.new(arr1)
  intersection = []

  arr2.each do |el|
    intersection << el if set1.include?(el)
  end

  intersection
end

#tests
p subsets([1,2,3,4])

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
  hash1 = Hash.new(0)
  intersection = []
  arr1.each { |el| hash1[el] += 1 }

  arr2.each do |el|
    if hash1[el] > 0
      hash1[el] -= 1
      intersection << el
    end
  end

  intersection
end

#tests
p subsets([1,2,3,4])

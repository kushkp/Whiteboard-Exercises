# returns ___ sets
def subsets(arr)
  return [[]] if arr.empty?

  prev = subsets(arr.take(arr.length - 1))
  new_subs = prev.map do |sub|
    sub + [arr.last]
  end

  prev + new_subs
end



#tests
p subsets([1,2,3,4])

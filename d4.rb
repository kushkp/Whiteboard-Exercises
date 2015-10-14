def largest_contiguous_subsum(arr)
  return nil if arr.empty?
  best_sum = running_total = arr[0]
  best_start = best_end = 0

  arr.each_with_index do |el, idx|
    next if idx == 0

    if el + running_total > best_sum
      if running_total < 0
        best_start = idx
        running_total = 0
        #best_sum = 0
      end

      best_end = idx
      #best_sum += el
    end

    running_total += el
    best_sum = running_total if running_total > best_sum
  end

  best_sum
end


#tests

p largest_contiguous_subsum([5, 3, -7, 6]) #8
p largest_contiguous_subsum([5, 3, -7, 6, 4]) #11
p largest_contiguous_subsum([5, 3, -9, 6, 4]) #10

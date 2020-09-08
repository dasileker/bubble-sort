def bubble_sort(arr)
  len = arr.length

  for i in 0...len
    for j in i + 1...len
      arr[i], arr[j] = arr[j], arr[i] if arr[i] > arr[j]
    end
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(array)
  raise 'No block_given' unless block_given?

  len = array.length - 1
  len.step(1, -1) do |a|
    (0...a).each do |i|
      test = yield(array[i], array[i + 1])
      next unless test.positive?

      temp = array[i]
      array[i] = array[i + 1]
      array[i + 1] = temp
    end
  end
  puts array.join(' ')
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

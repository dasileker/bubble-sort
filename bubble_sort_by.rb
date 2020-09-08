def bubble_sort(arr)

  len = arr.length()

    for i in 0...len
      for j in i+1...len
            if (arr[i] > arr[j])
                arr[i], arr[j] = arr[j], arr[i]            
            end
      end
    end
    return arr
end

p bubble_sort([4,3,78,2,0,2])

#bubble_sort_by[""hi","hello","hey""]
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

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end

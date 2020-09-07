def bubble_sort_by(arr)

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

p bubble_sort_by([4,3,78,2,0,2])
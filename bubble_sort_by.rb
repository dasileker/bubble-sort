def bubble_sort(array)
    for i in 0..array.length-2
        for j in 0..array.length-2
            if array[j] > array[j+1]
                array[j], array[j+1] = array[j+1], array[j]            
            end
        end
    end
     return array
end

array = [2, 4, 5, 7, 712, 64]

p bubble_sort(array)
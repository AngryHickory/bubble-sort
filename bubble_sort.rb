def bubble_sort(array)
  swapped_in_pass = true     

  while swapped_in_pass == true
    swapped_in_pass = false 

    (0...array.length-1).each do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped_in_pass = true
      end
    end
  end

  array
end

puts bubble_sort([4, 3, 78, 2, 0, 1, 3, 9, 8, 6, 55, 32])
def bubble_sort(array)
  swapped_in_pass = true     #=> initialize variable to check if swap was performed
  end_of_unsorted_portion = array.length-1     #=> Initialize variable to track the end of the unsorted portion of the array in order to shrink it

  while swapped_in_pass == true     #=> Keep iterating as long as a swap was performed last pass. This will stop the method once everything is sorted
    swapped_in_pass = false     #=> reset for each pass

    (0...end_of_unsorted_portion).each do |i|     #=> The inner loop iterates through the unsorted portion of the array and compares array[i] with array[i+1]
      if array[i] > array[i+1]     #=> if the element on the left is bigger than the element on the right,
        array[i], array[i+1] = array[i+1], array[i]     #=> swap the elements' positions
        swapped_in_pass = true     #=> and set flag to true so another pass will be performed
      end
    end

    end_of_unsorted_portion -= 1     #=> shrink the unsorted portion of the array by 1 since the largest element is now in place and doesn't need to be checked anymore
  end

  array     #=> Return the sorted array once all passes are complete
end

puts bubble_sort([4, 3, 78, 2, 0, 1, 3, 9, 8, 6, 55, 32])
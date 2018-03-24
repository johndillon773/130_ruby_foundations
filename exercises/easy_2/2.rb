# zipper

def zip(arr1, arr2)
  new_arr = []

  arr1.each_with_index { |n, idx| new_arr << [n, arr2[idx]] }

  new_arr
end

p zip([1, 2, 3], [4, 5, 6]) #== [[1, 4], [2, 5], [3, 6]]
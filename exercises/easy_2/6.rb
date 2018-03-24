# each_with_index

def each_with_index(array)
  array.each_with_index { |item, idx| yield(item, idx) }
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]
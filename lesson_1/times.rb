def times(int)
  current_num = 0
  while current_num < int
    yield(current_num) if block_given?
    current_num += 1
  end
  int
end

times(5) do |num|
  puts num
end
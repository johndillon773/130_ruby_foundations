#from-to-step sequence generator

def step(start_num, end_num, n)
  value = start_num

  loop do
    yield(value)
    break if value + n > end_num
    value = value + n
  end

  value
end

step(1, 10, 3) { |value| puts "value = #{value}" }
fact = Enumerator.new do |y|
  a = 1
  b = 0
  loop do
    a = b.zero? ? 1 : a * b
    y << a
    b += 1
  end
end

puts fact.next
puts fact.next
puts fact.next
puts fact.next
puts fact.next
puts fact.next
puts fact.next
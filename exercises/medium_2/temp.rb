def prompt_for_payment(input: $stdin)
  amount_paid = input
  puts amount_paid
  amount_paid = input.gets.chomp
  puts amount_paid
end

prompt_for_payment("hello")
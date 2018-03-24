# cash_register_test.rb

require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    register = CashRegister.new(100)
    transaction = Transaction.new(10)
    transaction.amount_paid = 20

    starting_amount = register.total_money
    register.accept_money(transaction)
    ending_amount = register.total_money

    assert_equal(starting_amount + 20, ending_amount)
  end

  def test_change
    register = CashRegister.new(100)
    transaction = Transaction.new(20)
    transaction.amount_paid = 30

    assert_equal(10, register.change(transaction))
  end

  def test_give_receipt
    item_cost = 10
    register = CashRegister.new(100)
    transaction = Transaction.new(item_cost)

    assert_output("You've paid $#{item_cost}.\n") do
      register.give_receipt(transaction)
    end
  end
end




# cash register test

require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    register = CashRegister.new(1000)
    transaction1 = Transaction.new(10)
    transaction1.amount_paid = 10

    previous_amount = register.total_money
    register.accept_money(transaction1)
    new_amount = register.total_money

    assert_equal(previous_amount + 10, new_amount)
  end

  def test_change
    register = CashRegister.new(1000)
    transaction1 = Transaction.new(10)
    transaction1.amount_paid = 15

    assert_equal(5, register.change(transaction1))
  end

  def test_give_receipt
    register = CashRegister.new(1000)
    transaction1 = Transaction.new(10)
    transaction1.amount_paid = 15

    assert_output("You've paid $10.\n") { register.give_receipt(transaction1) }
  end
end


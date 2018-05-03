require'transaction_log'
class Account
  attr_reader :balance

  def initialize(transaction = Transaction_log.new)
    @balance = 0
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
    @transaction.add(amount, @balance)
  end

  def withdraw(amount)
    if @balance < amount
      raise 'Sorry no enough money'
    else
      @balance -= amount
      @transaction.add(-amount, @balance)
    end
  end
end

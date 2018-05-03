require'transaction_log'
class Account
  attr_reader :balance

  def initialize(transaction = Transaction_log.new, date = Time.new)
    @balance = 0
    @transaction = transaction
    @date = date

  end

  def deposit(amount)
    @balance += amount
    @transaction.add("#{@date.strftime("%F").split("-").reverse().join("/")}", amount, @balance)
  end

  def withdraw(amount)
    if @balance < amount
      raise 'Sorry no enough money'
    else
      @balance -= amount
      @transaction.add("#{@date.strftime("%F").split("-").reverse().join("/")}", -amount, @balance)
    end
  end
end

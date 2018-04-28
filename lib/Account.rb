class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance < amount
      raise 'Sorry no enough money'
    else
      @balance -= amount
    end
  end
end

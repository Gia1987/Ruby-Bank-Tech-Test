class Transaction_log

  attr_reader :history

  def initialize()
    @history = []
  end

  def add(amount, balance)
    @history << [amount, balance]
  end
end

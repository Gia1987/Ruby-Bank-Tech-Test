class Transaction_log

  attr_reader :history

  def initialize()
    @history = []
  end

  def add(date, amount, balance)
    @history << [date, amount, balance]
  end
end

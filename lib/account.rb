
class Account

attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    raise 'Balance is insufficient for a withdrawal' if amount > @balance
    @balance -= amount
  end

end

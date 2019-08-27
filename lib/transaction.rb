
class Transaction

attr_reader :history, :date

  def initialize
    @history = []
    @date = Time.new.strftime("%d/%m/%Y")
  end

  def total(date, amount, final_balance)
    p @history.push(@date, amount.to_f.round(2), final_balance.to_f.round(2))
  end


end

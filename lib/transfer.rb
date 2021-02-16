require 'pry'

class Transfer
  attr_accessor :sender, :receiver, :status, :amount, :bank_account, :balancel

  def initialize(sender, receiver, amount = 50)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = 50
  end

  def valid?
    amount == amount && bank_account.balance > 0
  end

end

require 'pry'

class Transfer
  attr_accessor :sender, :receiver, :status, :amount, :bank_account

  def initialize(sender, receiver, amount = 50)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = 50
  end

  def valid?
    amount == amount
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    count = 0
    if valid?
      receiver.balance += amount
      sender.balance -= amount
      status.replace("complete")
      count += 1
    end
    if count > 1
      !execute_transaction
  end

end

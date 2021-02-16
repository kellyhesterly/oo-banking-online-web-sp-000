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
      receiver.balance += amount
      sender.balance -= amount
      status.replace("complete")
      if status == "complete"
        !execute_transaction
    end
  end

end

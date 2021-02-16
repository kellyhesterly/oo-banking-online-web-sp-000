require 'pry'

class Transfer
  def initialize
    @sender = sender
    @receiver = receiver
    @status = 'pending'
  end
end

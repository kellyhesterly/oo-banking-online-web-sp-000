require 'pry'
class BankAccount
  attr_accessor :status, :balance
  attr_reader :name

  def initialize
    @name = name
    @balance = 1000
    @status = open
  end
end

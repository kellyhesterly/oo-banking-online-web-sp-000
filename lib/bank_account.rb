require 'pry'
class BankAccount
  attr_accessor :status, :balance
  attr_reader :name

  def initialize(name, balance, status = 'open')
    @name = name
    @balance = 1000
  end
end

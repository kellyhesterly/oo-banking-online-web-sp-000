require 'pry'
class BankAccount
  attr_accessor :status, :balance
  attr_reader :name

  def initialize(name, balance = 1000, status = 'open')
    @name = name
    @balance = 1000
    @status = 'open'
  end

  def deposit(deposit_money)
    @balance + deposit_money
  end
end

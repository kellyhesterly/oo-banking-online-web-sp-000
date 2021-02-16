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
    @balance += deposit_money
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    status == "open" && balance > 0
  end

  def close_account
    status.clear
    status == "closed"
  end

end

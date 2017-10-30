class Atm
  require 'date'
  attr_accessor :funds

 def initialize
   @funds = 1000
 end

 def withdraw(amount, account)
   case
   when amount > account.balance
     return
   else
     @funds -= amount
     account.balance -= amount
     { status: true, message: 'success', date: Date.today, amount: amount }
   end
 end
end
class Atm
  attr_accessor :funds
  #INITIAL_AMOUNT_IN_ATM = 1000
  
  #def initialize
  #  @funds = INITIAL_AMOUNT_IN_ATM
  #end

  def withdraw(amount, pin)
      case
      when !sufficient_fund_in_atm then 'Sorry, withdrawal is not possible.'
      when negative_value(amount) then 'No negative numbers, please!'
      else
        amount % 5 == 0 and check_pin(pin) 
      end
  end

 private

 def negative_value(value)
   value <= 0
 end

 def check_pin(pin)
   pin == 1234
 end
 
 def sufficient_fund_in_atm
   @funds > 0
 end

end
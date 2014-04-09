#player vs dealer 
#deck -- 52 cars, 
# suite = clubs, diamons, spades, heart 2 -> 10, J, Q, K, A 
# can't go over 21 
require "rspec" 

class Card 
  attr_reader :suit, :value 

  def initialize(suit, value)  
   @suit =  suit 
   @value = value 
  end 

  def value  
   return 10 if ["J", "Q", "K"].include?(@value)
   return 11 if @value == "A"
   return @value 
  end 

  def to_s 
   "#{@value}-#{suit}"
  end 
end 


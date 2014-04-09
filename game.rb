require_relative "deck" 

class Hand  
  attr_reader :cards 
  def initialize
    @cards = [] 
  end 
  
  def hit!(deck)
  @cards <<  deck.cards.pop  
  end
 
  def value 
  cards.inject(0) { |sum, card| sum += card.value }
  # value = 0
  # @cards.each do |card|
  #   value += card.value
   end 
  end  
 
class Game 
  
  attr_reader :player_hand, :dealer_hand  
  def initialize 
   @deck = Deck.new 
   @player_hand = Hand.new
   @dealer_hand = Hand.new 
   2.times {@player_hand.hit!(@deck) }
   2.times {@dealer_hand.hit!(@deck) }  
  end 

  def hit 
    @player_hand.hit!(@deck)
  end 
  
  def status 
    {player_cards: @player_hand.cards, 
     player_value: @player_hand.value,
     dealer_cards: @dealer_hand.cards,
     dealer_value: @dealer_hand.value
    }
  end 
end 

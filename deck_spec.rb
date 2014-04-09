require_relative 'deck'

describe Deck do 
 
 it "should have 52 cards in deck" do
  Deck.build_cards.length.should eq(52) 
 end 
 it "should equal 52 cards with new deck" do 
   Deck.new.cards.length.should eq(52) 
 end  

end 

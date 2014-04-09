require_relative "game"
describe Hand do 
 it " should calculate the value correctly" do 
   deck = mock(deck: [Card.new(:clubs, 4), Card.new(:diamonds, 10)]) 
   hand - Hand.new
   2.times { hand.hit!(deck) } 
   hand.value.should eq(14) 
 end 

 describe "#play_as_dealer do" 
   it "should not hit on 16" do 
     deck = mock(:deck, :cards => [Card.new(:clubs, 4), Card.new(:diamonds, 10), Card.new(:clubs, 2)]) 
     hand - Hand.new
     2.times { hand.hit!(deck) } 
     hand.play_as_dealer 
     hand.value.should eq(16) 
   end 
  
   it "should hit below 16" 
   it "should stop on 21" 
  end  

describe Game do 
 
 it " should have a players hand " do 
   Game.new.player_hand.cards.length.should eq(2) 
 end
 it " should have a dealers hand " do 
   Game.new.dealer_hand.cards.length.should eq(2)
 end 
 it " should have a result" do
   Game.new.status.should_not be_nil 
 end 
 it " should hit when I tell it to" do 
   game = Game.new 
   game.hit
   game.player_hand.cards.length.should eq(3) 
 end 
 it " should play the dealer hand when I stand" do 
   game = Game.new 
   game.stand 
   game.status[:winner].should_not be_nil
 end 
end 

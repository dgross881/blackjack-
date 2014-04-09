require_relative 'blackjack'

describe Card do  
  it "should have a suit and value when building" do  
     card = Card.new(:clubs, 10) 
     card.suit.should eq(:clubs)
   
     card.value.should eq(10) 
  end 
  it" should have a value of 10 for facecards" do 
   facecards = ["J", "Q", "K"] 
   facecards.each do |facecard|
     card = Card.new(:hearts, facecard) 
  
     card.value.should eq(10) 
   end 
  end 
  it "should havea value of 4 for the 4-clubs" do 
    card = Card.new(:clubs, 4) 

    card.value.should eq(4) 
  end 
  it " should havea value of 11 for Aces" do 
  card = Card.new(:hearts, "A")

  card.value.should eq(11)
  end 
  it "should be formatted nicely" do 
    card = Card.new(:diamonds, "A")
    card.to_s.should eq("A-diamonds")
  end 
end  


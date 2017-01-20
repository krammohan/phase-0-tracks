require_relative 'guess'

describe Guess do
  let(:game) { Guess.new("bird") }
  
   it "creates a new array with just dashes to represent letters in the word" do
    expect(game.make_empty).to eq "----"
   end
   
   it "checks if the word has the given letter" do
    expect(game.check_letter("b")).to eq "b"
   end
   
   it "checks if the empty array has any dashes or not" do
    expect(game.check_status).to eq false
   end
   
   it "returns the number of letters in the word" do
    expect(game.get_length).to eq 4
   end
   
end
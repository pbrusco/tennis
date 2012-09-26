require 'spec_helper'

describe Match do
  it "should require to be in a round" do
    m = Match.new player_id: 1, opponent_id: 1
    m.should_not be_valid
  end

  it "should requiere players" do
    round = FactoryGirl.create(:round)

    m = Match.new player_id: 1
    m.round = round
    m.should_not be_valid
  
    m = Match.new opponent_id: 1
    m.round = round
    m.should_not be_valid
  end

  it "should be valid" do
    round = FactoryGirl.create(:round)

    m = Match.new player_id: 1, opponent_id: 1
    m.round = round
    m.should be_valid
  end


end

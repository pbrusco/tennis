require 'spec_helper'

describe Match do
  it "should require to be in a round" do
    m = Match.new
    m.opponent_id = FactoryGirl.create(:user).id
    m.player_id = FactoryGirl.create(:user).id
    m.should_not be_valid
  end

  it "should requiere players" do
    round = FactoryGirl.create(:round)

    m = Match.new
    m.player_id = FactoryGirl.create(:user).id
    m.round_id = round.id
    m.should_not be_valid
  
    m = Match.new 
    m.opponent_id = FactoryGirl.create(:user).id
    m.round_id = round.id
    m.should_not be_valid
  end

  it "should be valid" do
    m = Match.new 
    m.player_id = FactoryGirl.create(:user).id
    m.opponent_id = FactoryGirl.create(:user).id
    m.round_id = FactoryGirl.create(:round).id
    m.should be_valid
  end
end

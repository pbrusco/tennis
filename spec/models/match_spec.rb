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
    user = FactoryGirl.create(:user)
    m.player = user
    m.round = round
    m.should_not be_valid
  
    m = Match.new 
    m.opponent = FactoryGirl.create(:user)
    m.round = round
    m.should_not be_valid
  end
end

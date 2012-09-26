require 'spec_helper'

describe Round do
  it "should require a date" do
    round = Round.new
    round.should_not be_valid
  end

  it "should allow matchs" do
    round = FactoryGirl.create(:round)
    10.times do 
      round.matchs << FactoryGirl.create(:match)
    end
    round.should be_valid
    round.matchs.count.should be(10)
  end

end

require 'spec_helper'

describe Round do
  it "should require a date" do
    round = Round.new
    round.should_not be_valid
  end

  it "should allow matchs" do
    round = FactoryGirl.create(:round)
    10.times do 
      round.matches << FactoryGirl.create(:match)
    end
    round.should be_valid
    round.matches.count.should be(10)
  end

end

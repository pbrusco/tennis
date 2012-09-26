class Match < ActiveRecord::Base
  attr_accessible :opponent_id, :player_id
  belongs_to :round
end

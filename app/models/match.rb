class Match < ActiveRecord::Base
  attr_accessible :opponent_id, :player_id
  belongs_to :round
  validates_presence_of :round_id, :player_id, :opponent_id
end

class Match < ActiveRecord::Base
  belongs_to :player, :class_name => "User"
  belongs_to :opponent, :class_name => "User"
  
  belongs_to :round
  validates_presence_of :round, :player, :opponent
end

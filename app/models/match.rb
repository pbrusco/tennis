class Match < ActiveRecord::Base
  has_one :player, :class_name => "User"
  has_one :opponent, :class_name => "User"
  
  belongs_to :round
  validates_presence_of :round, :player, :opponent
end

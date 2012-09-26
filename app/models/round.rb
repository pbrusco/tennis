class Round < ActiveRecord::Base
  attr_accessible :date
  has_many :matchs
  validates_presence_of :date
end

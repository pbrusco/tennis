class Round < ActiveRecord::Base
  attr_accessible :date
  has_many :matches
  validates_presence_of :date
end

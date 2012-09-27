class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  belongs_to :matches_as_player, class_name: "Match", foreign_key: :player_id
  belongs_to :matches_as_opponent, class_name: "Match", foreign_key: :opponent_id
  
  def matches
    (matches_as_player || []) + (matches_as_opponent || [])
  end
end

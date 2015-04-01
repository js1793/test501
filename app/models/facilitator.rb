class Facilitator < ActiveRecord::Base
  has_many :leader

  has_many :groups
  has_many :titles
  has_many :roles
  has_many :secs


end

class Group < ActiveRecord::Base
  has_many :schools
  has_many :cycles
  has_many :leaders #:order => desc
  has_many :meridians
  has_many :types


  has_one :facilitator
  has_one :supervisor
end

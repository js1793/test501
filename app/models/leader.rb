class Leader < ActiveRecord::Base
  has_many :phones
  has_many :emails
  has_many :trainings
  has_many  :school

  has_one :facilitators


end

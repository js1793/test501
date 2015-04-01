class Training < ActiveRecord::Base
  has_many :menus
  has_many :days

end

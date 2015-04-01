class Supervisor < ActiveRecord::Base
  has_many :groups
  has_many :coaches
  has_many :coach_orders
end

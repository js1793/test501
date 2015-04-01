class Seniority < ActiveRecord::Base
  has_one :supervisor
end

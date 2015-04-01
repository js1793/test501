class Coach < ActiveRecord::Base
 has_many :schools
 has_one :supervisor

end

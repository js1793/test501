class Cycle < ActiveRecord::Base
  has_one :group
  has_one :school


  def name_with_id
    "#{id} #{cycle_name}"
  end


end

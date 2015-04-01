class School < ActiveRecord::Base
  has_one :leader
  has_one :coach
  has_one :group


  def name_with_id
    "#{id} #{school_name}"
  end


end

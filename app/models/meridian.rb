class Meridian < ActiveRecord::Base
  has_one :group

  def name_with_id
    "#{id} #{meridian_name}"
  end

end

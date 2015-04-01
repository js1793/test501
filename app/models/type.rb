class Type < ActiveRecord::Base

  has_one :group
  def name_with_id
    "#{id} #{type_name}"
  end

end

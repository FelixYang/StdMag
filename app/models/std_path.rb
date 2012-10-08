class StdPath < ActiveRecord::Base
  belongs_to :std_info
  attr_accessible :std_id, :std_path
end

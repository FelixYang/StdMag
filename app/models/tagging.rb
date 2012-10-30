class Tagging < ActiveRecord::Base
  attr_accessible :std_info_id, :tag_id
  
  belongs_to :std_info
  belongs_to :tag
end

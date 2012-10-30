class Tag < ActiveRecord::Base
  attr_accessible :tag_name
  
  has_many :taggings
  has_many :std_infos, :through => :taggings

end

class StdInfo < ActiveRecord::Base
  attr_accessible :std_id, :std_language, :std_name_cn, :std_name_en, :std_org, :std_release_time, :std_tag1, :std_tag2
  validates :std_id, :presence => true, :uniqueness => true
  validates :std_name_cn, :presence => true
  validates :std_name_en, :presence => true
  
  has_many :std_paths
end

class StdInfo < ActiveRecord::Base
  attr_accessible :std_id, :std_language, :std_name_cn, :std_name_en, :std_org, :std_release_time, :std_tag1, :std_tag2, :std_path
  validates :std_id, :presence => true, :uniqueness => true
  validates :std_name_cn, :presence => true
  validates :std_name_en, :presence => true
  
  has_many :taggings
  has_many :tags, :through => :taggings

  
  # def self.std_path(std_id)
  #   StdPath.find_by_name(std_id)s
  # end
  def self.find_for_test
    find(:all, :order => "std_id")
  end
  
  def self.find_by_tag(tag)
    find_all_by_std_tag1(tag) + find_all_by_std_tag2(tag)
  end
end

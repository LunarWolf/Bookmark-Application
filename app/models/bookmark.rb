class Bookmark < ActiveRecord::Base
  validates_presence_of :url
  validates_uniqueness_of :url

  has_one :site
end

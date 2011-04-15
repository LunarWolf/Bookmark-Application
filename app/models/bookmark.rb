class Bookmark < ActiveRecord::Base
  validates_presence_of :url
  validates_uniqueness_of :url

  has_one :site
  
  def tinyurl
    require 'open-uri'
    open("http://tinyurl.com/api-create.php?url=#{this.url}", "r").read
  end
  
  def title
    Mechanize.new.get(this.url).title
  end
end

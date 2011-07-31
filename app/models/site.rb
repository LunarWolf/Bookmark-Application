class Site < ActiveRecord::Base
  has_many :bookmarks, :dependent => :delete_all
  
  # I still don't like the repetition done here
  def title
    Mechanize.new.get(self.url).title
  end
end

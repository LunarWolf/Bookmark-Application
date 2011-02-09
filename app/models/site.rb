class Site < ActiveRecord::Base
  has_many :bookmarks, :dependent => :delete_all
end

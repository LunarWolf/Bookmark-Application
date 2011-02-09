module BookmarksHelper
  def get_site(url)
    #At first I was going to do the following with regex
    #but then realised this was a much better way of doing it
    require 'uri'
    site_url = URI.parse(url)
    site = Site.find_by_url("http://#{site_url.host}/")
    site = Site.create(:url => "http://#{site_url.host}/", :title => get_title("http://#{site_url.host}/")) if site.nil?
    site
  end
end

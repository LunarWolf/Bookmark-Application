class SearchController < ApplicationController
  def index
    redirect_to "/search/#{params[:tag]}" if params[:tag]
  end
  
  def search
    @bookmarks = Bookmark.find(:all, :conditions => ["tags like ?", "%#{params[:tag]}%"])
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end

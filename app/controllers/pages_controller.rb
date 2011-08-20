class PagesController < ApplicationController

  def index
  
    @tweets = Tweet.limit(10).order("id DESC")
    @commits = Commit.limit(10).order("id DESC")
    @ircs = Irc.limit(10).order("id DESC")
    @teams = Team.order("id ASC")
    
  
  end

end

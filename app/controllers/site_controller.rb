class SiteController < ApplicationController
  def index
  end

  def about
  end

  def welcome
  	if current_user
  		redirect_to posts_path
  	end
  end
end

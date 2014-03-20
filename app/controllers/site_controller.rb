class SiteController < ApplicationController
  def index
  end

  def about
  end

  def welcome
  	if current_user
  		redirect_to posts_path
  	else
  		redirect_to sign_in_path
  	end
  end
end

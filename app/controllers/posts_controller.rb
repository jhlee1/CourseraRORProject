class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
  	@posts = Post.all
  end
  def new 
  		@post = Post.new
  end

  def show
  end

  def create
  		@post = Post.new(post_params)
  		if @post.save
  				redirect_to @post, notice: 'It is posted'
  		else 
  				render 'new'
  		end
  end

  def edit
  end

  def update 
  		@post.update_attributes(post_params)
  		if @post.save 
  			redirect_to @post, notice: 'Post is updated.'
  		else
  			render 'edit'
  		end
  end

  def destroy
  		@post.destroy
  		redirect_to posts_path, notice: 'The post is deleted'
  end



private
	def post_params
			params.require(:post).permit(:title, :content, :date)
	end

	def set_post
			@post = Post.find(params[:id])
	end

end

class PagesController < ApplicationController
  def home
    @posts = Post.all
    
     
  end

  def index
     @posts = Post.all
  end

  def profile
       
      if  @user = User.find_by_username(params[:id])
          @username = @user.username
          @posts = Post.all.where("posts.user_id =?",User.find_by_username(params[:id]))
         
      else
        redirect_to '/', :notice => "User not found"
      end
        @newpost = Post.new
      @tofollow = User.first(5)
     
  end

  def explore
     @posts = Post.all
  end
end

class PostsController < ApplicationController
    
    def new
        @post = Post.new
    end
    
    def create
         
        @post= Post.new(user_params)
        @post.user_id = current_user.id
        if @post.save!
            redirect_to "", notice: "post created"
        else 
           redirect_to "", notice: "post not created"
        end
     
    end
    
    private 
    def user_params
        params.require(:post).permit(:content,:user_id)
    end
end 

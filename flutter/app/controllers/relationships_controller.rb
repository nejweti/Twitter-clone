class RelationshipsController < ApplicationController
    def create
        @user = User.find(params[:followed_id])
        current_user.follow(@user)
        redirect_to profile_path(current_user.username)
    end
    
    def destroy
        @user = User.find(params[:id]).followed
        current_user.unfollow(@user)
        redirect_to profile_path(current_user.username)
    end
end

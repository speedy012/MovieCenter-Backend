class MovieUsersController < ApplicationController

  def create
    # byebug
   mu = MovieUser.find_or_create_by(user_id:current_user1.id, movie_id: params[:movie_id])
   if params.include?("favorite")
     mu.update(favorite:params['favorite'])
   elsif params.include?("watchList")
     mu.update(watchList:params['watchList'])
   end
   render :Head=>:created
  end

end

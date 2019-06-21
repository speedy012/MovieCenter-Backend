class MovieUsersController < ApplicationController
  def index
    mus = MovieUser.all
    render json: mus
  end

  def update
    # byebug
   mu = MovieUser.find_or_create_by(user_id:current_user1.id, movie_id: params[:movie_id])
   if params.include?("favorite")
     mu.update(favorite:params['favorite'])
   elsif params.include?("watchList")
     mu.update(watchList:params['watchList'])
   end
   # just returnning head, no body
   render :Head=>:created
  end

  def destroy
    mu = MovieUser.find(params[:id])
    mu.destroy
     render :Head=>:ok
  end
end

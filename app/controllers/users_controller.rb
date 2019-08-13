class UsersController < ApplicationController
#[ara]
  def create
    
    user = User.create(user_params)
    is_valid = user.valid?

    if is_valid
    #  token = JWT.encode payload, 'otters', 'HS256'
      render json: { token: encode_token(user) }
    else
      render json: { errors: user.errors.full_messages}
    end
  end

# make changes
  def profile

    all_movies = MovieUser.all
    # logic that find my MovieUser, current_user1
    # arr
    # my moves users , json
    # render json: {myfavs:arr}
    render json: all_movies
  end

  private

  def user_params
    params.permit(:username, :password)
  end


end

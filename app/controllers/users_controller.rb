class UsersController < ApplicationController
#[ara]
  def create
    user=User.create(user_params)
    is_valid = user.valid?

    if is_valid
    #  token = JWT.encode payload, 'otters', 'HS256'
      render json: { token: encode_token(user) }
    else
      render json: { error: users.errors.full_messages}
    end
  end

# make changes
  def profile

    render json: current_user1
  end

  private

  def user_params
    params.permit(:username, :password)
  end


end

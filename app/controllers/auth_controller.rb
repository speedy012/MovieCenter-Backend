class AuthController < ApplicationController

  def login
  #params: { usermane; ', password ' '}
  #find the user by theri usernmae

  user=User.find_by(username: params["username"])
  #authenticate the user(using BYCRYPT)
  #is_authenticated = user.authenticate(params["password"])
  is_authenticated = user.authenticate(params["password"])
  #puts is_authenticated

  if is_authenticated
    #paylod = {user_id: user.id}
    #token = JWT.encode payload, 'otters', 'HS256'
    render json: { token: encode_token(user), user: user}
  else
    render json: { error: "wrong username or password"}
  end
  #"log in  the user" -whatever that means

  end

end

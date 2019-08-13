class ApplicationController < ActionController::API

  def user_payload(user)
    { user_id: user.id }
  end


  def encode_token(user)
    JWT.encode(user_payload(user), 'otters', 'HS256')
  end

  def decoded_token
     JWT.decode request.headers["Authorization"] , "otters", true, { algorithm: 'HS256' }
  end

  def current_user1
    userId = decode[0]["user_id"]
    # User.find(userId)
  end

end

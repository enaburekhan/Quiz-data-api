class SigninsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      payload = { user_id: user.id }
      token = encode_token(payload)
      render json: { email: user.email, user_id: user.id, jwt: token }
    else
      render json: { failure: 'Login failed! Invalid email/password combination.' }, status: :not_acceptable
    end
  end
end

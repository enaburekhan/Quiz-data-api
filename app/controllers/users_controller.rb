class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      payload = { user_id: user.id }
      token = encode_token(payload)
      render json: { email: user.email, user_id: user.id, jwt: token }, status: :created
    else
      render json: { failure: user.errors.full_messages }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end

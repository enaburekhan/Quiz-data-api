require 'rails_helper'

RSpec.describe 'QuizData', type: :request do
  before(:example) do
    @user = User.create(email: 'eric@gmail.com', password: 'eric123')
    @uiz_data = QuizDatum.create(founder_name: 'Oluwatoyin', email: 'toyin@gmail.com', country: 'nigeria',
                                gender: 'female', race_of_founder: 'black',
                                text_box: 'other credentials include vegan, etc',
                                conscious_beauty_credentials: 'sulphate_free', user_id: 1)
    token = JWT.encode({ user_id: @user.id }, Rails.application.secret_key_base)
    @headers = { Authorization: "Bearer #{token}" }
  end

  it 'shows all quiz_data' do
    get '/api/v1/quiz_data', headers: @headers
    expect(response).to have_http_status(:ok)
  end
end

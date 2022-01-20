require 'rails_helper'

RSpec.describe 'Signins', type: :request do
  before(:example) do
    @user = User.create(email: 'eric@gmail.com', password: 'eric123')
  end

  it 'It signins an existing user' do
    post '/api/v1/signins', params: { email: 'eric@gmail.com', password: 'eric123' }
    expect(response).to have_http_status :ok
  end

  it 'does not authenticate a user if one of the attributes is invalid' do
    post '/api/v1/signins', params: { email: 'eric@gmail.com', password: 'enab' }
    expect(response).to have_http_status :not_acceptable
  end
end

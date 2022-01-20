Rails.application.routes.draw do
  scope :api do
    scope :v1 do
      resources :users, only: %i[create]
      resources :signins, only: %i[create]
      resources :quiz_data
    end
  end  
end

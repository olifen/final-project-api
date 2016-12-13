Rails.application.routes.draw do
  scope :api do
    # TODO: confirm if we really need the "except:" clause for the resources below:
    resources :users, except: [:create]
    resources :games
    resources :venues

    post 'register', to: 'auth#register'
    post 'login', to: 'auth#login'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'homes/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "homes/index", to: 'homes#send_tweet'
  root "homes#index"
end

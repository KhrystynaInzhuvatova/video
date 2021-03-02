Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "calls#root"
  get "users", controller: "users", action: "index"
  get "user/:id", controller: "users", action: "show"
  match "unsibscribe/:id", controller: "calls", action: "unsibscribe", as: :unsibscribe, via: [:get, :post]
  post '/twilio/sms'
  post '/twilio/voice'
  resources :calls, only: :create
  mount ActionCable.server, at: '/cable'
  match '*path', to: 'calls#root', via: :all
end

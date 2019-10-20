Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "calls#root"
  get "users", controller: "users", action: "index"
  get "user/:id", controller: "users", action: "show"
  resources :calls, only: :create
  mount ActionCable.server, at: '/cable'
  match '*path', to: 'calls#root', via: :all
end

Rails.application.routes.draw do
  root to: 'landing#index'
  get 'landing', to: 'landing#index'
  get 'landing/thanks', to: 'landing#thanks'
  post 'landing', to: 'landing#get_email'
end

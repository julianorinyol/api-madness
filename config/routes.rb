Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  get '/facebook' => 'authentication#facebook'
  get '/auth/:provider/callback' => 'visitors#index'
end

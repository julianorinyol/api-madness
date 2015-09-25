Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  get '/facebook' => 'authentication#facebook'
  get '/github' => 'authentication#github'
  get '/auth/:provider/callback' => 'authentication#facebook_callback'
end

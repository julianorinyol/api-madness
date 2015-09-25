Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  get '/facebook' => 'authentication#facebook'
  get '/github' => 'authentication#github'
  get '/tumblr' => 'authentication#tumblr'
  get '/twitter' => 'authentication#twitter'
  get '/linkedin' => 'authentication#linkedin'
  get '/google' => 'authentication#google'
  get '/instagram' => 'authentication#instagram'


  get '/auth/:provider/callback' => 'authentication#facebook_callback'
end

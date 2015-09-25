class AuthenticationController < ApplicationController
  def facebook 
     redirect_to '/auth/facebook'
  end

  def facebook_callback
    binding.pry
    auth = request.env["omniauth.auth"]
    if auth.provider = 'facebook'
      current_user.facebook_uid = auth['uid']
    elsif auth.provider = 'github'
      current_user.github_uid = auth['uid']
    end
    current_user.save
    binding.pry
    redirect_to root_path
  end
  def github
    redirect_to '/auth/github'
  end
end
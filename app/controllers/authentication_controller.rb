class AuthenticationController < ApplicationController
  def facebook 
     redirect_to '/auth/facebook'
  end
  def github
    redirect_to '/auth/github'
  end
  def tumblr
    redirect_to '/auth/tumblr'
  end
  def twitter
    redirect_to '/auth/twitter'
  end

  def facebook_callback
    auth = request.env["omniauth.auth"]
    if auth.provider == 'facebook'
      current_user.facebook_uid = auth['uid']
    elsif auth.provider == 'github'
      current_user.github_uid = auth['uid']
    elsif auth.provider == 'tumblr'
      current_user.tumblr_uid = auth['uid']
    elsif auth.provider == 'instagram'
      current_user.instagram_uid = auth['uid']
    elsif auth.provider == 'linkedin'
      current_user.linkedin_uid = auth['uid']
    elsif auth.provider == 'google'
      current_user.google_uid = auth['uid']
    elsif auth.provider == 'twitter'
      current_user.twitter_uid = auth['uid']
    end
    current_user.save
    redirect_to root_path
  end
end
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.secrets.facebook_provider_key, Rails.application.secrets.facebook_provider_secret
  provider :github, Rails.application.secrets.github_provider_key, Rails.application.secrets.github_provider_secret
  provider :tumblr, Rails.application.secrets.tumblr_provider_key, Rails.application.secrets.tumblr_provider_secret
  provider :twitter, Rails.application.secrets.twitter_provider_key, Rails.application.secrets.twitter_provider_secret
  provider :linkedin, Rails.application.secrets.linkedin_provider_key, Rails.application.secrets.linkedin_provider_secret
  provider :instagram, Rails.application.secrets.instagram_provider_key, Rails.application.secrets.instagram_provider_secret
  provider :google_oauth2, Rails.application.secrets.google_provider_key, Rails.application.secrets.google_provider_secret
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.secrets.facebook_provider_key, Rails.application.secrets.facebook_provider_secret
  provider :github, Rails.application.secrets.github_provider_key, Rails.application.secrets.github_provider_secret
end

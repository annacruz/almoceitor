GOOGLE_CONFIG = YAML.load_file("#{::Rails.root}/config/google.yml")[::Rails.env]

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, GOOGLE_CONFIG["GOOGLE_KEY"], GOOGLE_CONFIG["GOOGLE_SECRET"]
end
credential = ContentfulUser.find_by_name('Marley Spoon')

ContentfulRails.configure do |config|
  # config.authenticate_webhooks = true # false here would allow the webhooks to process without basic auth
  # config.webhooks_username = "a basic auth username"
  # config.webhooks_password = "a basic auth password"
  config.access_token = credential.access_token
  config.space = credential.space_id
  config.environment = credential.environment_id
  config.perform_caching = true
end

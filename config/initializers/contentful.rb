ContentfulRails.configure do |config|
  config.access_token = ENV['ACCESS_TOKEN']
  config.space = ENV['SPACE']
  config.environment = ENV['ENVIRONMENT']
  config.perform_caching = true
end

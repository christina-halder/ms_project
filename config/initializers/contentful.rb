# ContentfulModel.configure do |config|
#   config.space = "kk2bw5ojx476" # Required
#   config.access_token = "7ac531648a1b5e1dab6c18b0979f822a5aad0fe5f1109829b8a197eb2be4b84c" # Required
#   config.environment = "master" # Optional - defaults to 'master'
#   config.default_locale = "en-US" # Optional - defaults to 'en-US'
#   config.options = {# Optional
#                     # Extra options to send to the Contentful::Client and Contentful::Management::Client
#                     # See https://github.com/contentful/contentful.rb#configuration
#
#                     # Optional:
#                     # Use `delivery_api` and `management_api` keys to limit to what API the settings
#                     # will apply. Useful because Delivery API is usually visitor facing, while Management
#                     # is used in background tasks that can run much longer. For example:
#                     # delivery_api: {
#                     #     timeout_read: 6
#                     # },
#                     # management_api: {
#                     #     timeout_read: 100
#                     # }
#   }
# end

ContentfulRails.configure do |config|
  # config.authenticate_webhooks = true # false here would allow the webhooks to process without basic auth
  # config.webhooks_username = "a basic auth username"
  # config.webhooks_password = "a basic auth password"
  config.access_token = "7ac531648a1b5e1dab6c18b0979f822a5aad0fe5f1109829b8a197eb2be4b84c"
  config.space = "kk2bw5ojx476"
  config.environment = "master"
  # config.contentful_options = "hash of options"
end

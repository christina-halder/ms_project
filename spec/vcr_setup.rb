require 'vcr'

VCR.configure do |config|
  config.allow_http_connections_when_no_cassette = true
  config.hook_into :webmock
  config.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  config.preserve_exact_body_bytes { false }
  config.configure_rspec_metadata!

  config.filter_sensitive_data('<COMPANY_NAME>',ENV('COMPANY_NAME'))
  config.filter_sensitive_data('<SPACE>',ENV('SPACE'))
  config.filter_sensitive_data('<ACCESS_TOKEN>',ENV('ACCESS_TOKEN'))
  config.filter_sensitive_data('<ENVIRONMENT>',ENV('ENVIRONMENT'))
end

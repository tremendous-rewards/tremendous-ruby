SANDBOX_TOKEN = ENV.fetch("SANDBOX_API_TOKEN")
PRODUCT_ID = ENV.fetch("TEST_PRODUCT_ID")
CAMPAIGN_ID = ENV.fetch("TEST_CAMPAIGN_ID")
RECIPIENT_EMAIL = ENV.fetch("TEST_RECIPIENT_EMAIL")

Tremendous::Configuration.default.configure do |config|
  config.server_index = Tremendous::Configuration::Environment["testflight"]

  config.access_token = SANDBOX_TOKEN
end

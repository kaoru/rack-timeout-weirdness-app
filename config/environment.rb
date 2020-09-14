# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
  config.action_dispatch.rescue_responses["Rack::Timeout::Error"] = :request_timeout
  config.action_dispatch.rescue_responses["Rack::Timeout::RequestTimeoutException"] = :request_timeout
end

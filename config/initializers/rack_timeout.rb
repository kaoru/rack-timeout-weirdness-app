Rails.application.config.middleware.insert_before Rack::Runtime, Rack::Timeout, service_timeout: 5

# Do not debug exceptions - we want to test rack-attack behaviour in development
Rails.application.config.middleware.delete(ActionDispatch::DebugExceptions)

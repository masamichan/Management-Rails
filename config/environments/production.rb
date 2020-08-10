Rails.application.configure do

  config.hosts << "localhost"
  
  config.cache_classes = false

  config.eager_load = true

  config.consider_all_requests_local       = false

  config.action_controller.perform_caching = true

  config.public_file_server.enabled = true

  config.assets.compile = true

  config.active_storage.service = :local

  config.log_level = :debug

  config.log_tags = [ :request_id ]

  config.action_mailer.perform_caching = false

  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify

  config.log_formatter = ::Logger::Formatter.new

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false
end

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # # See: http://doc.locomotivecms.com/get-started/heroku
  #   config.hosting = {
  #     :target     => :heroku,
  #     :api_key    => ENV['HEROKU_API_KEY'],
  #     :app_name   => ENV['HEROKU_APP_NAME']
  #   }

  # A single locomotiveCMS instance can serve one single site or many.
  # If you want to run many different websites, you will have to specify
  # your own domain name (ex: locomotivehosting.com).
  #
  # Ex:
  # config.multi_sites do |multi_sites|
  #   # each new website you add will have a default entry based on a subdomain
  #   # and the multi_site_domain value (ex: website_1.locomotivehosting.com).
  #   # multi_sites.domain = 'example.com' #'myhostingplatform.com'
  #   multi_sites.domain = 'planktin.com'

  #   # define the reserved subdomains
  #   # Ex:
  #   multi_sites.reserved_subdomains = %w(www admin email blog webmail mail support help site sites)
  # end
  # config.multi_sites = false

  # Code is not reloaded between requests
  config.cache_classes = true

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Enable Rack::Cache to put a simple HTTP cache in front of your application
  # Add `rack-cache` to your Gemfile before enabling this.
  # For large-scale production use, consider using a caching reverse proxy like
  # NGINX, varnish or squid.
  # config.action_dispatch.rack_cache = true

  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  # config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # `config.assets.precompile` and `config.assets.version` have moved to config/initializers/assets.rb

  # Specifies the header that your server uses for sending files
  # config.action_dispatch.x_sendfile_header = 'X-Sendfile' # for apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true

  # @see https://github.com/heroku/rails_12factor
  if ENV['RAILS_LOG_TO_STDOUT'].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  # Use the lowest log level to ensure availability of diagnostic information
  # when problems arise.
  config.log_level = :debug

  # Prepend all log lines with the following tags
  # config.log_tags = [ :subdomain, :uuid ]

  # Use a different logger for distributed setups
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  # Ignore bad email addresses and do not raise email delivery errors.
  # Set this to true and configure the email server for immediate delivery to raise delivery errors.
  # config.action_mailer.raise_delivery_errors = false
  config.action_mailer.raise_delivery_errors  = true
  config.action_mailer.delivery_method        = :smtp
  config.action_mailer.smtp_settings          = {
    address: 'smtp.sendgrid.net',
    port: 587, # default: 25
    authentication: :plain,
    user_name: ENV['SENDGRID_USERNAME'],
    password: ENV['SENDGRID_PASSWORD'],
    domain: ENV['SENDGRID_DOMAIN'], # TODO: may be causing probs for some sites
    enable_starttls_auto: true # added...
  }

  # See: http://doc.locomotivecms.com/get-started/heroku
  # See: https://devcenter.heroku.com/articles/sendgrid

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found).
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new
end

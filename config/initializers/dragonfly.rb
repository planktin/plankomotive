# Configure
Dragonfly.app(:engine).configure do
  plugin :imagemagick,
    convert_command:  `which convert`.strip.presence || '/usr/local/bin/convert',
    identify_command: `which identify`.strip.presence || '/usr/local/bin/identify'

  verify_urls true

  # secret 'c1f4437209556e158d25a039434abefd8e3199b09cd918e2e39ddead1bff8f99'
  # url_format '/images/dynamic/:job/:basename.:ext'

  secret 'c635b2cf0be5573a1ee651dcbc5bc1b60ced0672f05204118f77c5921f8012d9'

  url_format '/images/dynamic/:job/:sha/:basename.:ext'

  fetch_file_whitelist /public/

  fetch_url_whitelist /.+/
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware, :engine

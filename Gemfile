source 'https://rubygems.org'

ruby '2.2.4'

# Rails
gem 'rails',         '~> 4.2.5'
gem 'sass-rails',    '~> 5.0'
gem 'uglifier',      '>= 1.3.0'
gem 'coffee-rails',  '~> 4.1.0'
# gem 'compass-rails', '~> 2.0.2'

# Locomotive, AWS, Heroku
# gem 'locomotive_cms', '~> 2.5', git: 'https://github.com/planktin/engine.git', branch: 'woff2'
gem 'locomotivecms', '~> 3.1.1'
gem 'carrierwave-aws'
gem 'platform-api',  '~> 0.3.0'

# Use Puma as the app server
gem 'puma'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'dotenv-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Heroku
group :production do
  # Use thin as app server on Heroku
  gem 'thin'
  # http://www.amberbit.com/blog/building-small-sites-with-locomotive-cms-and-deploying-to-heroku-and-gridfs
  # gem 'bson_ext', '~> 1.9.2'
  # gem 'rack-gridfs', '~> 0.4.1'
end

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', :platforms => :ruby
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'
# To use Jbuilder templates for JSON
# gem 'jbuilder'
# Deploy with Capistrano
# gem 'capistrano'
# To use debugger
# gem 'debugger'

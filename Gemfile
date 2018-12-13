source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Rails
gem 'coffee-rails',  '~> 4.2'
gem 'rails',         '~> 5.1.1'
gem 'sass-rails',    '~> 5.0'
gem 'uglifier',      '>= 1.3.0'

# Locomotive, AWS, Heroku
gem 'carrierwave-aws'
gem 'devise',        '~> 4.4.3'
gem 'locomotivecms', '~> 3.4'
gem 'mongoid',       '~> 6.4.0'
gem 'platform-api'

# Use Puma as the app server
gem 'puma'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'dotenv-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '>= 3.3.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Heroku
# https://github.com/heroku/rails_12factor
# group :production do
#   # Use thin as app server on Heroku
#   gem 'thin'
#
#   # https://devcenter.heroku.com/articles/rails4
#   gem 'rails_12factor'
#
#   # http://www.amberbit.com/blog/building-small-sites-with-locomotive-cms-and-deploying-to-heroku-and-gridfs
#   # gem 'bson_ext', '~> 1.9.2'
#   # gem 'rack-gridfs', '~> 0.4.1'
# end

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

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

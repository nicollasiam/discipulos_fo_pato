source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

source 'https://rails-assets.org' do
  gem 'rails-assets-jquery.inputmask', '~> 3.3.0'
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Use postgresql as the database for Active Record

# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'


# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'jquery-rails'
gem 'font-awesome-sass', '~> 5.0.13'
gem 'friendly_id'
gem 'simple_form', '~> 4.0.0'
gem 'slim-rails', '~> 3.1.3'
gem 'enumerize', '~> 2.2.2'
gem 'awesome_print'
gem 'devise'
gem 'devise-i18n'
gem 'pundit'
gem 'omniauth-google-oauth2', '~> 0.4.1'
gem 'rubocop', '~> 0.55.0', require: false
gem 'kaminari', '~> 1.1.1'
gem 'aws-ses', '~> 0.6.0', require: 'aws/ses'
gem 'faker', git: 'https://github.com/stympy/faker.git', branch: 'master'
gem 'pg'
gem 'paper_trail'

# Datepicker
gem 'bootstrap-datepicker-rails'

# translations
gem 'i18n_generators'

group :production do
  gem 'exception_notification'
end

group :development, :test do
  gem 'dotenv-rails', '~> 2.1', require: 'dotenv/rails-now'
  gem 'factory_bot_rails', '~> 4.8.2'
  gem 'rspec-rails', '~> 3.7.2'
  gem 'shoulda', '~> 3.5.0'
  gem 'simplecov', '~> 0.16.1', require: false
  gem 'guard', '~> 2.14.2'
  gem 'guard-rubocop'
  gem 'guard-rspec', '~> 4.7.3'
  gem 'guard-brakeman'
end

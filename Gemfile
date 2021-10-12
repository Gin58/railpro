source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby '2.6.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 5.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
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
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'faker'
end
group :development do
  gem 'ridgepole'
  gem 'web-console', '>= 3.3.0'
  gem 'rubocop', require: false
  gem 'rubocop-performance'
  gem 'brakeman'
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rack-dev-mark'
  gem 'letter_opener'
  gem 'letter_opener_web'
end
group :test do
  gem 'rspec-rails', '~> 3.8.0'
  gem 'rspec-retry'
  gem 'spring-commands-rspec'
  gem 'factory_bot_rails'
  gem 'database_cleaner'
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'simplecov', require: false
  gem 'rails-controller-testing'
  # circle ci
  # gem 'rspec_junit_formatter'
  # gem 'rspec-collection_matchers'
  # gem 'simplecov-rcov'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'webpacker', '~> 4.0'
gem 'bootstrap', '~> 4.4.1'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'sprockets-rails'
gem 'mini_racer'
gem 'font-awesome-rails'
gem 'devise'
gem 'kaminari'
gem 'arctic_admin'
gem 'activeadmin'
gem 'carrierwave', '~> 1.0'
gem 'fog-aws'
gem 'activerecord-import'
gem 'rbtrace'
gem 'stackprof', require: false

gem 'admins', path: 'admins'
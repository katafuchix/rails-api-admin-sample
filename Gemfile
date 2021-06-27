source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# bundle config --local build.mysql2 "--with-ldflags=-L/usr/local/opt/openssl/lib"
gem 'mysql2', '~> 0.5'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


# util
gem 'config'
gem 'dotenv-rails'
gem 'rails-i18n'
gem 'enum_help'
#gem 'rmagick'
gem "mini_magick"
gem 'carrierwave'
gem 'carrierwave-base64'
gem 'carrierwave-magic'
gem 'acts-as-taggable-on'
gem 'piet'
gem 'fog-aws'
gem 'bullet'
#gem 'bootstrap-sass'
gem "refile", require: "refile/rails", github: 'manfe/refile'
gem "refile-mini_magick"

# API
gem 'grape'
gem 'hashie-forbidden_attributes'
gem 'grape-jbuilder'
gem 'grape_on_rails_routes'
gem 'swagger-ui_rails'
gem 'grape-swagger'
gem 'grape-swagger-rails'

gem 'devise'
gem 'devise_token_auth'
gem 'grape_devise_token_auth'
gem 'devise-i18n'

# DB
gem 'ridgepole', '0.9.3'
gem 'seed-fu'
gem 'default_value_for'
gem 'counter_culture'

# ActiveRecord Soft Delete
gem 'kakurenbo-puti'

# Paging
gem 'kaminari'

# Search
gem 'ransack'

# Deploy
gem 'capistrano', '3.15.0'
gem 'capistrano-rails'
gem 'capistrano-rbenv'
gem 'capistrano-rbenv-install'
gem 'capistrano-bundler'
gem 'capistrano-rails-console'
gem 'capistrano-sidekiq'
gem 'unicorn'

# fcm
gem "fcm"

# Redis
gem 'redis', '4.1.4'
gem 'redis-rails'
gem 'connection_pool'
gem 'redis-namespace'

gem 'sidekiq', '5.2.5'
gem 'sidekiq-history'
gem 'sidekiq-statistic'
gem 'sidekiq-failures'

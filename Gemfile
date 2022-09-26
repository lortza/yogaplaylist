# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

gem 'bootsnap', '>= 1.4.2', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'devise'                               # User authentication
gem 'jbuilder', '~> 2.11'                  # https://github.com/rails/jbuilder
gem 'pg', '>= 0.18', '< 2.0'               # Use postgresql as the database for Active Record
gem 'puma'                                 # Use Puma as the app server
gem 'rails', '~> 6.1.6'                    # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'sass-rails', '~> 6'                   # Use SCSS for stylesheets
gem 'turbolinks', '~> 5'                   # https://github.com/turbolinks/turbolinks
gem 'webpacker'                            # Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# gem 'redis', '~> 4.0'                    # Use Redis adapter to run Action Cable in production
# gem 'bcrypt', '~> 3.1.7'                 # Use Active Model has_secure_password
# gem 'image_processing', '~> 1.2'         # Use Active Storage variant
gem 'net-imap', require: false
gem 'net-pop', require: false
gem 'net-smtp', require: false # Send internet mail via SMTP

group :development, :test do
  gem 'awesome_print'           # makes console output easy to read
  gem 'better_errors'           # creates console in browser for errors
  gem 'binding_of_caller'       # goes with better_errors
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-rails'               # for calling binding.pry
  gem 'reek'                    # https://github.com/troessner/reek/blob/master/docs/Code-Smells.md
  gem 'rubocop-performance'     # rubocop gem helper
  gem 'rubocop-rails'           # ruby linter
  gem 'scss_lint', require: false # css linter
end

group :development do
  gem 'listen'
  gem 'rb-readline'             # resolves readline errors and allows rails con to run
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.1.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner'        # clears out test db
  gem 'factory_bot_rails'       # factory support for rspec
  gem 'launchy'                 # open browser with save_and_open_page
  gem 'rspec-rails'             # rspec testing
  gem 'shoulda-matchers'        # library for easier testing syntax
  gem 'webdrivers'              # to help with testing
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

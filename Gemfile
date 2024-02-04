source "https://rubygems.org"

ruby "3.2.2"

gem "rails", "~> 7.1.3"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", ">= 4.0.1"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "image_processing", "~> 1.2"

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem "debug", platforms: %i[ mri windows ]
  gem 'rubocop', require: false
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'rails-controller-testing'
  gem 'rubocop-gitlab-security'
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-performance', require: false
  gem 'faker'
end

group :development do
  gem 'bundler-audit'
  gem "web-console"
  gem "rack-mini-profiler"
  gem 'i18n-tasks'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'brakeman'
  gem 'letter_opener_web'
end

group :test do
  gem 'factory_bot_rails'
  gem 'fuubar'
  gem 'shoulda-matchers'
  gem "capybara"
  gem "selenium-webdriver"
  gem 'webdrivers'
end

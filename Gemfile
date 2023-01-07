# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'
gem 'rails', '~> 7.0.4'
gem "meta-tags"
gem "breadcrumbs_on_rails"
# css and js
gem 'bootstrap', '~> 5.2.3'
gem 'jsbundling-rails'
gem 'cssbundling-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'sassc-rails'
gem 'puma', '~> 5.0'
gem 'faker'
gem 'jbuilder'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', require: false

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot'
  gem 'pg'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'rubocop'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'webdrivers'
end

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem

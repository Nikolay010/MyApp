# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'importmap-rails'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.3', '>= 7.0.3.1'
gem 'redis', '~> 4.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
# gem "kredis"
# gem "bcrypt", "~> 3.1.7"
gem 'bootsnap', require: false
gem 'bootstrap', '~> 5.1.3'
gem 'devise', '~> 4.8'
gem 'discard', '~> 1.2'
gem 'gravatar_image_tag', '~> 1.2'
gem 'image_processing', '~> 1.2'
gem 'sassc-rails'
gem 'simple_form', '~> 5.1'
gem 'slim-rails', '~> 3.5'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'byebug', '~> 11.1'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 5.1'
  gem 'rubocop'
  gem "factory_bot_rails", "~> 6.2"
  gem "faker", "~> 2.23"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'
  # gem "rack-mini-profiler"
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

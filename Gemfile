source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.4'

gem 'rails', '~> 6.1.7', '>= 6.1.7.3'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'devise', '~> 4.8'
gem 'devise-i18n'
gem 'exception_notification', '~> 4.4', '>= 4.4.3'
gem 'groupdate', '~> 5.2'
gem 'jbuilder', '~> 2.7'
gem 'kaminari', '~> 1.2'
gem 'net-imap', require: false
gem 'net-pop', require: false
gem 'net-smtp', require: false
gem 'pg', '~> 1.2', '>= 1.2.3', group: :production
gem 'puma', '~> 5.0'
gem 'pundit', '~> 2.1'
gem 'rolify', '~> 6.0'
gem 'sass-rails', '>= 6'
gem 'simple_form', '~> 5.1'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'webpacker', '~> 5.0'

group :development do
  gem 'bullet'
  gem 'letter_opener', '~> 1.7'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'rails_best_practices', '~> 1.23', '>= 1.23.1', require: false
  gem 'rubocop', require: false
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'simplecov', '~> 0.22.0', require: false
  gem 'simplecov_json_formatter', '~> 0.1.4', require: false
  gem 'webdrivers'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 6.0'
  gem 'sqlite3', '~> 1.4'
end

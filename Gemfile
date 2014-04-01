source 'https://rubygems.org'

ruby '2.1.1'

gem 'rails', git: 'https://github.com/rails/rails.git', branch: '4-1-stable'

gem 'devise', '~> 3.2.4'
gem 'nifty-generators'
#oauth
gem "omniauth"
gem 'omniauth-linkedin'
gem 'omniauth-github'
gem "linkedin"

gem 'sass-rails', '~> 4.0.1'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.1'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'normalize-rails'
gem 'haml'
gem 'bourbon'
gem 'neat'
gem 'html2haml'
gem 'flat-ui-rails'

group :production do
  gem 'pg'
  gem 'unicorn'
  gem 'rails_12factor'
end

group :doc do
  gem 'sdoc', require: false
end

group :development do
  # gem 'sqlite3'
  gem 'mysql2'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'awesome_print'
  gem 'sql_origin'
  gem 'hirb'
  gem 'dotenv-rails'
end

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara-webkit'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'mocha'
  gem 'guard'
  gem 'guard-rspec'
  gem 'pry'
end
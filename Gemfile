source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


gem 'devise', '1.5.1'
gem 'omniauth'
gem 'omniauth-twitter'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
	gem 'twitter-bootstrap-rails'
	gem 'execjs'
	gem 'less-rails'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'omniauth'
gem 'omniauth-facebook'

group :development, :test do
	gem 'mysql2'
	gem 'pry'
  gem 'pry-debugger'
end

group :production do
	gem 'pg'
end

gem 'activeadmin', git: 'https://github.com/gregbell/active_admin.git'
gem "meta_search",    '>= 1.1.0.pre'

group :test do
  gem "rspec-rails", "~> 2.0"
  gem 'shoulda-matchers'
  gem "factory_girl_rails"
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem 'capybara'
  gem "cucumber-websteps"
end


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

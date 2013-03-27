source 'http://rubygems.org'

gem 'rails', '3.2.1'
group :test do
	gem 'cucumber-rails'
	gem 'cucumber-rails-training-wheels'
	gem 'database_cleaner'
	gem 'capybara'
	gem 'launchy'
  gem 'rspec-rails'
end

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'sqlite3'
  #gem 'ruby-debug19', :require => 'ruby-debug' # MOD KIMADA 2/21/2013 Commented out
end
group :production do
  gem 'therubyracer-heroku', :platform => :ruby # MOD KIMADA 2/21/2013 Added
  gem 'pg'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'haml'
gem 'rb-readline'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

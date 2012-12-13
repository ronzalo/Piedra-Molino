if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end
source 'https://rubygems.org'

gem 'rails', '3.2.9'
# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
group :production do
  gem 'pg'
end

group :development, :test do	
  gem 'mysql2'
end

gem 'sass-rails',   '~> 3.2.3'

gem 'rails-i18n'
gem 'activeadmin'
#gem 'active_admin_editor'
gem 'cancan'
gem 'activeadmin-cancan'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', '~> 0.11.0beta5'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem 'jquery-ui-rails'
group :libv8 do
  gem 'libv8', "~> 3.11.8"
end
#gem 'rails3-jquery-autocomplete'
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

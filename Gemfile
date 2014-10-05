source 'https://rubygems.org'

ruby '2.1.3'

# Load environment variables from .env in development before other gems init.
gem 'dotenv-rails', groups: [:development, :test]

# gem 'jbuilder', '~> 2.0'
gem 'bootstrap-sass'
gem 'coffee-rails', '~> 4.0.0'
gem 'devise'
gem 'font-awesome-rails'
gem 'haml-rails'
gem 'jquery-easing-rails'
gem 'jquery-rails'
gem 'pundit'
gem 'rails', '4.1.6'
gem 'sass-rails', '~> 4.0.3'
gem 'sendgrid'
gem 'simple_form'
gem 'turbolinks'
gem 'twilio-rb' # Note: official gem is twilio-ruby
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'hirb'
  gem 'html2haml'
  gem 'quiet_assets'
  gem 'rails_apps_pages'
  gem 'rails_layout'
  gem 'spring'
end

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end


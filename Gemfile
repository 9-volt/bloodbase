source 'https://rubygems.org'
ruby '2.0.0'
gem 'sqlite3'
gem 'rails', '4.0.0'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 1.2'
gem 'bootstrap-sass'
gem 'compass-rails'
gem 'devise'
gem 'figaro'
gem 'haml-rails'
gem 'thin'
gem 'paperclip', '~> 3.0'
gem 'hashids'
gem 'unicorn'
gem 'capistrano',  '~> 3.1'

group :development do
  gem 'capistrano-rvm', require: false
  gem 'capistrano-rails', require: false
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'html2haml'
  gem 'quiet_assets'
  gem 'annotate', ">=2.5.0"
end

group :development, :test do
  gem 'rspec-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
end

group :production do
  gem 'fog'
end

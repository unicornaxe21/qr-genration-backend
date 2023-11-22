source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0', '>= 6.0.3.4'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'

gem 'dotenv', '~> 2.7', '>= 2.7.6'
gem 'dotenv-rails'
gem 'pry', '~> 0.14.1'
gem 'rubocop', '~> 0.39.0'
gem 'rspec'
gem 'activeadmin', '~> 2.9'
gem 'devise', '~> 4.8'
gem 'sassc-rails'
gem 'aws-sdk-s3', '~> 1.114', require: false
gem 'rqrcode'
gem 'paperclip'
gem 'chunky_png', '~> 1.4'
gem 'activeadmin-xls'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'capistrano', '~> 3.4'
gem 'capistrano-rails', '~> 1.6', '>= 1.6.1'
gem 'capistrano-passenger', '~> 0.2.1'
gem 'capistrano-rbenv', '~> 2.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 5.0', '>= 5.0.2'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
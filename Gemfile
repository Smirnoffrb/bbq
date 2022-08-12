
source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"

gem 'active_storage_validations'
gem "image_processing", ">= 1.2"
gem "aws-sdk-s3"
gem "bcrypt_pbkdf", ">= 1.0", "< 2.0"
gem "bootsnap", require: false
gem "devise"
gem "devise-i18n"
gem 'fog-aws'
gem "mailjet"
gem "dotenv-rails"
gem "font-awesome-rails"
gem "rails-i18n"
gem "rails", "~> 7.0.3"
#gem "ruby-vips"
gem "sprockets-rails"
gem "puma", "~> 5.0"
gem "pundit", "~> 1.1"
gem "jbuilder"
gem "jsbundling-rails"
gem "turbo-rails", "~> 1.0"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "sqlite3", "~> 1.4"
end

group :development do
  gem "web-console"
end

group :production do
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-passenger'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'pg'
end

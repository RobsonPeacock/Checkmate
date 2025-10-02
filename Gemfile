source "https://rubygems.org"

ruby "3.3.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.3", ">= 7.1.3.2"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[windows jruby]

gem 'bootstrap', '~> 5.3', '>= 5.3.3'
gem 'font-awesome-sass', '~> 6.5', '>= 6.5.2'
gem 'rails-controller-testing', '~> 1.0', '>= 1.0.5'
gem 'sassc-rails', '~> 2.1', '>= 2.1.2'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "byebug", "~> 11.1"
  gem "debug", platforms: %i[mri windows]
  gem 'factory_bot_rails', '~> 6.4', '>= 6.4.3'
  gem 'rspec-rails', '~> 6.1', '>= 6.1.3'
  gem "rubocop", "~> 1.81"
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

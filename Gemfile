source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'aws-sdk'
# gem 'bcrypt', '~> 3.1.7'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'paperclip'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.2'
gem 'sass-rails', '~> 5.0'
gem 'slim-rails'
# gem 'redis', '~> 3.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'pry-byebug'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

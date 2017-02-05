source "https://rubygems.org"

ruby '2.4.0'

gem "decidim", git: "https://github.com/AjuntamentdeBarcelona/decidim.git", branch: "fix_proposals_loading"
gem "decidim-debates", path: "engines/decidim-debates"

gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem "progressbar"
  gem 'rainbow', "2.1.0"
  gem "decidim-dev", git: "https://github.com/AjuntamentdeBarcelona/decidim.git", branch: "fix_proposals_loading"
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'faker'
end

group :production do
  gem "passenger"
  gem "sidekiq"
  gem "rails_12factor"
  gem "fog-aws"
  gem "newrelic_rpm"
  gem "dalli"
end

group :test do
  gem 'rspec-rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

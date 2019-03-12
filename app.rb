require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem "sinatra"
  gem "puma"
end

set :app_file, $0   # https://github.com/sinatra/sinatra/issues/1507

set :bind, '0.0.0.0'
set :port, 8080

get '/' do
  erb :contact
end

post '/' do
  erb :complete
end



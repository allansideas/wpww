$LOAD_PATH << '.'
#config.ru
require 'rubygems'
require 'json'
require 'sinatra'
require 'rack'
require 'rack/cors'

#This is currently completely insecure.
use Rack::Cors do |config|
  config.allow do |allow|
    allow.origins '*'
    allow.resource '*',
        :methods => [:get, :post, :put, :patch, :delete, :options],
        :headers => :any,
        :max_age => 0
  end
end

require 'wpww_sinatra'
set :root, Pathname(__FILE__).dirname
set :environment, ENV['RACK_ENV']
set :run, false
run WpwwWeb

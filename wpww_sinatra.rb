$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__), 'lib'))
require 'yaml'
require 'sinatra/base'
require 'playhouse/sinatra'
require 'wpww/wpww_play'

class WpwwWeb < Sinatra::Base
  register Playhouse::Sinatra
  set :root,  File.expand_path(File.join(File.dirname(__FILE__)))

  #we will get to this later.
  routes = YAML.load_file('config/routes.yml')

  add_play Wpww::WpwwPlay, routes

  run! if app_file == $0
end


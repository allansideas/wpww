require 'active_record'
require 'sqlite3'
require 'active_record/connection_adapters/sqlite3_adapter'
require 'wpww/wpww_play'

module Wpww
  #Here we can set app wide config.
  ROOT_PATH = File.expand_path(File.join(File.dirname(__FILE__), '..'))
end

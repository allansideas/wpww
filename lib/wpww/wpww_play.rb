require 'playhouse/support/files'
require 'playhouse/play'
require_all File.dirname(__FILE__), 'contexts/**/*.rb'


module Wpww
  class WpwwPlay < Playhouse::Play
    context Test
    #contexts_for TODO

    def self.name
      'wpww'
    end
  end
end

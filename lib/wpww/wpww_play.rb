require 'playhouse/support/files'
require 'playhouse/play'
require_all File.dirname(__FILE__), 'contexts/**/*.rb'


module Wpww
  class WpwwPlay < Playhouse::Play
    context Test
    contexts_for Groups
    contexts_for Users

    def self.name
      'wpww'
    end
  end
end

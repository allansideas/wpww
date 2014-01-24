require 'playhouse/support/files'
require 'playhouse/play'
require_all File.dirname(__FILE__), 'contexts/**/*.rb'


module Wpww
  class WpwwPlay < Playhouse::Play
    contexts_for Comments
    contexts_for Groups
    contexts_for Users
    contexts_for LineItems

    def self.name
      'wpww'
    end
  end
end

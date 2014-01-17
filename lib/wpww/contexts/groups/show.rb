require 'playhouse/context'
require 'wpww/entities/group'

module Wpww
  module Groups
    class Show < Playhouse::Context
      actor :identifier

      def perform
        data = Group.find_by_identifier(identifier)
      end
    end
  end
end

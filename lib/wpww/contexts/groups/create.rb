require 'playhouse/context'

module Wpww
  module Groups
    class Create < Playhouse::Context
      actor :description, optional: true

      def perform
        data = Group.create!(actors)
        data
      end
    end
  end
end

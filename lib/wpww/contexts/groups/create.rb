require 'playhouse/context'

module Wpww
  module Groups
    class Create < Playhouse::Context
      actor :name
      actor :description

      def perform
        data = Group.create!(actors)
        data
      end
    end
  end
end

require 'playhouse/context'

module Wpww
  module Groups
    class Create < Playhouse::Context
      actor :name
      actor :owner_name
      actor :owner_email
      actor :description, optional: true

      def perform
        data = Group.create!(actors)
        data
      end
    end
  end
end

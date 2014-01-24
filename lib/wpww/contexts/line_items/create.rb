require 'playhouse/context'
require 'wpww/entities/user'
require 'wpww/entities/line_item'

module Wpww
  module LineItems
    class Create < Playhouse::Context
      actor :user, repository: User
      actor :name
      actor :amount_in_cents

      def perform
        data = LineItem.create!(actors)
        data
      end
    end
  end
end

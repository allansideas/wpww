require 'playhouse/context'
require 'wpww/entities/user'
require 'wpww/entities/group'

module Wpww
  module Users
    class Create < Playhouse::Context
      actor :group, repository: Group
      actor :name
      actor :email, optional: true
      actor :amount_paid_cents
      actor :description, optional: true

      def perform
        data = User.create!(actors)
        data
      end
    end
  end
end

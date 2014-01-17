require 'playhouse/context'
require 'wpww/entities/user'

module Wpww
  module Users
    class Update < Playhouse::Context
      actor :user, repository: User 
      actor :name
      actor :email, optional: true
      actor :description, optional: true
      actor :amount_paid_cents

      def get_actors
        actors_except :user
      end

      def perform
        user.update_attributes!(get_actors)
        user
      end
    end
  end
end

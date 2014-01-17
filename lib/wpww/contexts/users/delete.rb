require 'playhouse/context'
require 'wpww/entities/user'

module Wpww
  module Users
    class Delete < Playhouse::Context
      actor :user, repository: User 

      def perform
        user.destroy!
      end
    end
  end
end

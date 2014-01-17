require 'playhouse/context'
require 'wpww/entities/group'

module Wpww
  module Users
    class List < Playhouse::Context
      actor :group, repository: Group

      def perform
        data = group.users
        data
      end
    end
  end
end

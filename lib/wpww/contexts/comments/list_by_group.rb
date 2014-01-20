require 'playhouse/context'
require 'wpww/entities/group'
require 'wpww/entities/comment'

module Wpww
  module Comments
    class ListByGroup < Playhouse::Context
      actor :group, repository: Group

      def perform
        data = group.comments
        data
      end
    end
  end
end

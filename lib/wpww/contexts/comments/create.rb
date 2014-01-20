require 'playhouse/context'
require 'wpww/entities/group'
require 'wpww/entities/comment'

module Wpww
  module Comments
    class Create < Playhouse::Context
      actor :group, repository: Group
      actor :name, optional: true
      actor :body, optional: true

      def perform
        data = Comment.create!(actors)
        data
      end
    end
  end
end

require 'playhouse/context'
require 'wpww/entities/group'

module Wpww
  module Users
    class List < Playhouse::Context
      actor :group, repository: Group

      def perform
        #data = []
        #group.users.each do |u|
          #line_items = u.line_items(true)
          #u.attributes.merge!(line_items: line_items)
          #data << u
        #end
        #data
        group.users.as_json(include: :line_items)
      end
    end
  end
end

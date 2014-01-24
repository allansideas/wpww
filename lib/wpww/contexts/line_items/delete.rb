require 'playhouse/context'
require 'wpww/entities/line_item'

module Wpww
  module LineItems
    class Delete < Playhouse::Context
      actor :line_item, repository: LineItem 

      def perform
        line_item.destroy!
      end
    end
  end
end

require 'active_record'

module Wpww
  class User < ActiveRecord::Base
    belongs_to :group
    has_many :line_items
  end
end

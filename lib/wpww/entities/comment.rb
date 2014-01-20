require 'active_record'

module Wpww
  class Comment < ActiveRecord::Base
    belongs_to :group
  end
end

require 'active_record'

module Wpww
  class LineItem < ActiveRecord::Base
    belongs_to :user
  end
end

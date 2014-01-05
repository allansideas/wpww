require 'active_record'

module Wpww
  class User < ActiveRecord::Base
    belongs_to :group
  end
end

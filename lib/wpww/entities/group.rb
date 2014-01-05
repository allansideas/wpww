require 'active_record'

module Wpww
  class Group < ActiveRecord::Base
    before_create :generate_identifier
    has_many :users

    def generate_identifier
      self.identifier = SecureRandom.urlsafe_base64 64
      self.identifier.upcase
    end
  end
end

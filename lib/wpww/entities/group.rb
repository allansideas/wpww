require 'active_record'

module Wpww
  class Group < ActiveRecord::Base
    before_create :generate_identifier
    has_many :users
    has_many :comments

    def generate_identifier
      self.identifier = SecureRandom.urlsafe_base64 24
      self.identifier.upcase
    end
  end
end

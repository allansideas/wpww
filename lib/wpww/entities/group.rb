require 'active_record'
require 'mail'

module Wpww
  class Group < ActiveRecord::Base
    before_create :generate_identifier
    after_save :send_mail
    has_many :users
    has_many :comments

    def generate_identifier
      self.identifier = SecureRandom.urlsafe_base64 24
      self.identifier.upcase
    end

    def send_mail
      Mail.defaults do
        delivery_method :smtp, 
          address:                 "127.0.0.1",
          port:                    25
          #:user_name => 'woww-098ac911401ee10f',
          #:password => 'da30b1f3656ac34d',
          #:address => 'mailtrap.io',
          #:port => '2525',
          #:authentication => :plain
      end
      
      @group = self
      mail = Mail.new(
        from: 'noreply@instantiate.me',
        to: "#{@group.owner_email}",
        subject: "Owing created for #{@group.name}",
        body: "
          Hi, Here is the owings calculator link you created for #{@group.name} so you can find it again...
          \r\n 
          http://woww.instantiate.me/#/event/#{@group.identifier}/show
          \r\n
          Thanks,
          Owings Team.
        "
        )

      mail.deliver!
    end
  end
end

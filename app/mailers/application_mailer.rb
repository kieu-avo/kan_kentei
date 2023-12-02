class ApplicationMailer < ActionMailer::Base
  default from: Settings.email_address.sender_address
  layout "mailer"
end

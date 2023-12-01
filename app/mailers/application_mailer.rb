class ApplicationMailer < ActionMailer::Base
  default from: Settings.from_email_address
  layout "mailer"
end

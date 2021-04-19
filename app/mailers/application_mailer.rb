class ApplicationMailer < ActionMailer::Base
  default from: "#{SmtpConfig.take.smtp_user_name if SmtpConfig.take}"
  layout 'mailer'
end

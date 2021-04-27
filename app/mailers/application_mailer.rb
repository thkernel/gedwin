class ApplicationMailer < ActionMailer::Base
  default from: "#{SmtpConfig.first.smtp_user_name}" if SmtpConfig.first.present?
  layout 'mailer'
end



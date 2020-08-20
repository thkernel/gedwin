class ImputationMailer < ActionMailer::Base
    #include SmtpHelper
    helper :application
        
    add_template_helper EmailHelper
    #add_template_helper ApplicationHelper
    default from: "<#{Rails.env.production? ? Rails.application.credentials.dig(:email, :production, :user_name) : Rails.application.credentials.dig(:email, :development, :user_name)}>"
    
    def new_imputation_mail(user_id, imputation)
        @user = User.find(user_id)
        @imputation = imputation
        
        
        @url  = Rails.env.production? ? Rails.application.credentials.dig(:email, :production, :host) : Rails.application.credentials.dig(:email, :development, :host)
      

        mail(to: @user.email, subject: "Nouvelle imputation")
    end
end
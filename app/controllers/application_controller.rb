class ApplicationController < ActionController::Base
  include ApplicationHelper
	
  protect_from_forgery with: :exception
	before_action :google_login, except: [:set_google_drive_token]


  def set_mailer_settings
	
      smtp_config = Config.take

			if smtp_config.present?
				ActionMailer::Base.smtp_settings.merge!({
					:address => smtp_config.smtp_address , 
					:port => smtp_config.smtp_port,
					:domain => smtp_config.smtp_domain,
					:authentication => 'plain',
					:user_name => smtp_config.user_name,
					:password => smtp_config.user_password,
          :enable_starttls_auto => true,
          :ssl => false
				})
				
			end
				#ActionMailer::Base.default_options = {from: "slatejob.official@gmail.com"}

	

  end


	

	def google_login
		unless $drive.get_credentials
			redirect_to oauth2callback_path
		end
	end
		

end

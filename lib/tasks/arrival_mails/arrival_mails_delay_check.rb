module ArrivalMailDelayCheck

    def my_logger
		@@my_logger ||= Logger.new("#{Rails.root}/log/arrival_mail_delay_check.log")
    end
    
    
    
    def arrival_mail_delay_check
        begin
            
            
            # Get the current opened arrival mail register
            register = Register.where("register_type = ? AND status = ? ", REGISTER_TYPES[0][0], REGISTER_STATUSES[0][0]).last

            if register.present?
                # Get arrival mail by register.
                # Get arrival mail where to_answer and response_date
                arrival_mails = ArrivalMail.where("register_id = ? AND to_answer = ?",  register.id, "Oui")
                arrival_mails = arrival_mails.where.not(response_limit_time: nil)

                current_date = Time.now.strftime("%d/%m/%Y")

                # response_limit_time   
                arrival_mails.map do |arrival_mail|
                    if arrival_mail.response_limit_time < current_date
                        arrival_mail.update_column(:status, "Non répondu")
                    end
                end

            else
                return
            end
            
        
        rescue Exception => e  
            #puts "Erreur de vérification de la date d'expiration du courrier d'arrivée: #{e.backtrace}"
            #logger.error("Message for the log file #{e.backtrace}")
            my_logger.info("Message for the log file #{e.backtrace}")
			
        end

    end
end
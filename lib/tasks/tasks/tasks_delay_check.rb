module TaskDelayCheck

    def my_logger
		@@my_logger ||= Logger.new("#{Rails.root}/log/arrival_mail_delay_check.log")
    end
    
    
    
    def task_delay_check
        begin
            
            
            # Get the current 
            tasks = ImputationItem.where(completed_date: nil)

            if tasks.present?
                
                current_date = Time.now.strftime("%d/%m/%Y")

                # response_limit_time   
                tasks.map do |task|
                    if task.due_date < current_date
                        task.update_column(:status, "Non terminée")
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
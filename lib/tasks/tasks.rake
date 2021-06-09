# Include modules
include ArrivalMailDelayCheck
include TaskDelayCheck
include TicketDelayCheck
include SharedUtils::AppLogger

namespace :tasks do
    

    desc "Arrival mail delay check"
    task arrival_mail_delay_check: :environment do 
        
        arrival_mail_delay_check()
        #cron_logger.info("======== CRON: Arrival mail delay check, AT: #{Time.now} ===========")
        
    end

    desc "Task delay check"
    task task_delay_check: :environment do 
        
        task_delay_check()
        #cron_logger.info("======== CRON: Arrival mail delay check, AT: #{Time.now} ===========")
        
    end

    desc "Ticket delay check"
    task ticket_delay_check: :environment do 
        
        ticket_delay_check()
        #cron_logger.info("======== CRON: Arrival mail delay check, AT: #{Time.now} ===========")
        
    end

    
end

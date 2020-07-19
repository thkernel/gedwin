require 'fileutils'

module SharedUtils

    # For model
    module Model
        
        def before_save_hook
            self.status = "Enable"
        end


    end

    # For model
    module Generate
        
        def generate_uid
            current_record = self
            unless current_record.uid.present?
                begin
                    current_record.uid = SecureRandom.hex(32)
                end while current_record.class.where(uid: current_record.uid).exists?
            end
        end

        
    end

    module  Folder

        # Create a folder

        def create_folder(folder)
            unless File.exists?(folder) 
                #Dir.mkdir(folder)
                FileUtils.mkdir_p(folder)

            else
                puts "Folder exist!"
            end
        end

        
    end


end
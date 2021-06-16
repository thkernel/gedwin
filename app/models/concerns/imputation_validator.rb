module ImputationValidator
    class ImputationUnicityValidator < ActiveModel::Validator
  
        def validate(record)
            if record.new_record?
                puts "IMPUTABLE TYPE: #{record.imputable_type}"
                imputation = Imputation.where("recipient_id = ? AND imputable_id = ? AND imputable_type = ?", record.recipient_id, record.imputable_id, record.imputable_type)
      
                puts "IMPUTATION TO VALIDE: #{imputation.inspect}"
                if imputation.present?
                    record.errors.add(:imputation,"must be imputed to recipient only once")
                end
            else
                imputation = Imputation.where("recipient_id = ? AND imputable_id = ? AND imputable_type = ?", record.recipient_id, record.imputable_id, record.imputable_type).first
      
                puts "IMPUTATION TO VALIDE: #{imputation.inspect}"
                
                unless imputation.id == record.id
                    record.errors.add(:imputation,"must be imputed to recipient only once")
                end

            end
    
            puts "RECORD: #{record.imputation_items.inspect}"
        end
      
    end


    class ImputationItemValidator < ActiveModel::Validator
  
        def validate(record)
        
      
          if record.imputation_items.blank?
            record.errors.add(:imputation,"must contain tasks")
          end
    
            
        end
      
      end
end
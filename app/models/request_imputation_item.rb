# == Schema Information
#
# Table name: request_imputation_tasks
#
#  id                    :bigint           not null, primary key
#  uid                   :string
#  task_type_id          :bigint
#  title                 :string
#  description           :text
#  start_date            :datetime
#  end_date              :datetime
#  closing_date          :datetime
#  task_status_id        :bigint
#  request_imputation_id :bigint
#  user_id               :bigint
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class RequestImputationItem < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_uid

  
  belongs_to :task
  belongs_to :task_status
  belongs_to :request_imputation
 
end

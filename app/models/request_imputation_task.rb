class RequestImputationTask < ApplicationRecord
  belongs_to :task_type
  belongs_to :task_status
  belongs_to :request_imputation
  belongs_to :user
end

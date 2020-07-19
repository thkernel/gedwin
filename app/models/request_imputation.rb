class RequestImputation < ApplicationRecord
  belongs_to :service
  belongs_to :receiver
  belongs_to :request
  belongs_to :user
end

class RequestImputation < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_uid


  belongs_to :service
  belongs_to :receiver
  belongs_to :request
  belongs_to :user
end

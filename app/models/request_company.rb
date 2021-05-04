# == Schema Information
#
# Table name: request_companies
#
#  id           :bigint           not null, primary key
#  request_id   :bigint
#  company_name :string
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class RequestCompany < ApplicationRecord
  belongs_to :request
end

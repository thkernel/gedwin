# == Schema Information
#
# Table name: request_subjects
#
#  id           :bigint           not null, primary key
#  request_id   :bigint
#  subject_name :string
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class RequestSubject < ApplicationRecord
  belongs_to :request
end

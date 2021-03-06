# == Schema Information
#
# Table name: requests
#
#  id                    :bigint           not null, primary key
#  uid                   :string
#  request_type_id       :bigint
#  first_name            :string
#  last_name             :string
#  gender                :string
#  born_date             :datetime
#  born_place            :string
#  academic_year         :string
#  classroom             :string
#  speciality            :string
#  license_year          :string
#  cycle                 :string
#  level                 :string
#  request_date          :datetime
#  card_deliverance_date :datetime
#  description           :text
#  identification_number :text
#  companies             :string
#  subjects              :string
#  status                :string
#  user_id               :bigint
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Request < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  before_save :set_default_status
  
  belongs_to :request_type
  belongs_to :user,  optional: true

  has_many :imputations, as: :imputable,  dependent: :destroy



  def student_full_name
    "#{first_name} #{last_name}"
  end
  private

  def set_default_status
    unless self.status.present?
      self.status = "In progress"
    end
  end
end

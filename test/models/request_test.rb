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

require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

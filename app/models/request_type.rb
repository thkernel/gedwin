# == Schema Information
#
# Table name: request_types
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class RequestType < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_uid

  belongs_to :user
end

# == Schema Information
#
# Table name: features
#
#  id            :bigint           not null, primary key
#  name          :string
#  role_id       :bigint
#  permission_id :bigint
#  description   :text
#  status        :string
#  user_id       :bigint
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Feature < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_uid

  belongs_to :role
  belongs_to :permission
  belongs_to :user
end

# == Schema Information
#
# Table name: abilities
#
#  id            :bigint           not null, primary key
#  uid           :string
#  feature_id    :bigint
#  permission_id :bigint
#  role_id       :bigint
#  status        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Ability < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid

  belongs_to :permission
  belongs_to :role
  belongs_to :feature
end

# == Schema Information
#
# Table name: correspondents
#
#  id                    :bigint           not null, primary key
#  uid                   :string
#  correspondent_type_id :bigint
#  organization_name     :string
#  first_name            :string
#  last_name             :string
#  civility              :string
#  address               :string
#  phone                 :string
#  city                  :string
#  country               :string
#  zip_code              :string
#  status                :string
#  user_id               :bigint
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Correspondent < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_uid

  belongs_to :correspondent_type
  belongs_to :user

  # Validations
	validates :organization_name,  uniqueness: true
end

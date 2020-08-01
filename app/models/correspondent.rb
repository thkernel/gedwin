# == Schema Information
#
# Table name: correspondents
#
#  id                    :bigint           not null, primary key
#  uid                   :string
#  correspondent_type_id :bigint
#  organization_name     :string
#  contact_first_name    :string
#  contact_last_name     :string
#  contact_civility      :string
#  address               :string
#  contact_phone         :string
#  phone                 :string
#  city                  :string
#  country               :string
#  zip_code              :string
#  email                 :string
#  contact_email         :string
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
  

  def correspondent_name
    if self.organization_name.present?
      "#{organization_name}"
    else
      "#{contact_last_name} #{contact_first_name}"
    end
  end
end

# == Schema Information
#
# Table name: services
#
#  id                :bigint           not null, primary key
#  parent_service_id :integer
#  name              :string
#  description       :text
#  status            :string
#  user_id           :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Service < ApplicationRecord
  belongs_to :user
  has_many :profiles, dependent: :destroy
  # Validations
	validates :name, presence: true, uniqueness: true
end

# == Schema Information
#
# Table name: binders
#
#  id          :bigint           not null, primary key
#  uid         :string
#  folder_id   :bigint
#  name        :string
#  description :text
#  status      :string
#  path        :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Binder < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  belongs_to :folder
  belongs_to :user

  # Validations
	validates :name, presence: true, uniqueness: true
end

# == Schema Information
#
# Table name: folders
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  path        :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Folder < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  belongs_to :user

  has_many :binders, dependent: :destroy

  # Validations
	validates :name, presence: true, uniqueness: true
end

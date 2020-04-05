# == Schema Information
#
# Table name: binders
#
#  id          :bigint           not null, primary key
#  folder_id   :bigint
#  name        :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Binder < ApplicationRecord
  belongs_to :folder
  belongs_to :user

  # Validations
	validates :name, presence: true, uniqueness: true
end

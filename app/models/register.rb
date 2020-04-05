# == Schema Information
#
# Table name: registers
#
#  id               :bigint           not null, primary key
#  register_type_id :bigint
#  name             :string
#  start_date       :datetime
#  end_date         :datetime
#  reference        :string
#  description      :text
#  status           :string
#  user_id          :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Register < ApplicationRecord
  belongs_to :register_type
  belongs_to :user


  # Validations
	validates :name, presence: true, uniqueness: true
end

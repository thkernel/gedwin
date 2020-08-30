# == Schema Information
#
# Table name: features
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  description :text
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Feature < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid



  # Validations.
  validates :name, presence: true, uniqueness: true
end

# == Schema Information
#
# Table name: imputation_reasons
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ImputationReason < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_uid

  belongs_to :user


  has_many :imputation_items, dependent: :destroy
  has_many :imputations, :through => :imputation_items, dependent: :destroy


  # Validations
	validates :name, presence: true, uniqueness: true
end

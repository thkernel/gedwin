# == Schema Information
#
# Table name: request_imputations
#
#  id          :bigint           not null, primary key
#  uid         :string
#  service_id  :bigint
#  receiver_id :bigint
#  request_id  :bigint
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class RequestImputation < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid


  belongs_to :service
  belongs_to :request
  belongs_to :user
  belongs_to :user, :foreign_key => "receiver_id", :class_name => "User"

  has_many :request_imputation_items, dependent: :destroy
  accepts_nested_attributes_for :request_imputation_items ,  allow_destroy: true
end

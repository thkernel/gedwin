# == Schema Information
#
# Table name: imputations
#
#  id              :bigint           not null, primary key
#  service_id      :bigint
#  recipient_id    :bigint
#  arrival_mail_id :bigint
#  status          :string
#  user_id         :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Imputation < ApplicationRecord
  

  belongs_to :user
  belongs_to :user, :foreign_key => "recipient_id", :class_name => "User"


  has_many :imputation_items, dependent: :destroy
  has_many :imputation_reasons, :through => :imputation_items, dependent: :destroy

  has_many :tasks, dependent: :destroy
end

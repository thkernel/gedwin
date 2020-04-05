# == Schema Information
#
# Table name: profiles
#
#  id          :bigint           not null, primary key
#  civility    :string
#  first_name  :string
#  last_name   :string
#  address     :string
#  phone       :string
#  description :text
#  status      :string
#  service_id  :bigint
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :service

  # For active storage
  has_one_attached :avatar


  def full_name
    "#{first_name} #{last_name}"
  end
end

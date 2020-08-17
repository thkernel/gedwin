# == Schema Information
#
# Table name: priorities
#
#  id         :bigint           not null, primary key
#  name       :string
#  status     :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Priority < ApplicationRecord
  belongs_to :user
end

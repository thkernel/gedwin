# == Schema Information
#
# Table name: task_types
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TaskType < ApplicationRecord
  belongs_to :user
end

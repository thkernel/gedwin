# == Schema Information
#
# Table name: tasks
#
#  id             :bigint           not null, primary key
#  task_type_id   :bigint
#  title          :string
#  description    :text
#  start_date     :datetime
#  end_date       :datetime
#  closing_date   :datetime
#  task_status_id :bigint
#  imputation_id  :bigint
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Task < ApplicationRecord
  belongs_to :user
end

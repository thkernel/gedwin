# == Schema Information
#
# Table name: task_time_trackings
#
#  id                 :bigint           not null, primary key
#  imputation_item_id :bigint
#  start_date         :datetime
#  end_date           :datetime
#  status             :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class TaskTimeTracking < ApplicationRecord
  belongs_to :imputation_item
end

# == Schema Information
#
# Table name: imputation_items
#
#  id             :bigint           not null, primary key
#  uid            :string
#  task_id        :bigint
#  title          :string
#  description    :text
#  start_date     :datetime
#  end_date       :datetime
#  closing_date   :datetime
#  task_status_id :bigint
#  imputation_id  :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ImputationItem < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid

  belongs_to :imputation
  belongs_to :task

  scope :completed, ->{where("task_status_id = #{TaskStatus.find_by(name: "Terminée").id}")}
  scope :uncompleted, ->{where("task_status_id IS NOT  #{TaskStatus.find_by(name: "Terminée").id}")}

end

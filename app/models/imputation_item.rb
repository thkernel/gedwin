# == Schema Information
#
# Table name: imputation_items
#
#  id             :bigint           not null, primary key
#  uid            :string
#  title          :string
#  description    :text
#  due_date       :datetime
#  start_date     :datetime
#  completed_date :datetime
#  status         :string
#  priority       :string
#  imputation_id  :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ImputationItem < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid

  belongs_to :imputation
  

  scope :completed, ->{where("task_status_id = #{TaskStatus.find_by(name: "Terminé").id}")}
  scope :uncompleted, ->{where("task_status_id IS NOT  #{TaskStatus.find_by(name: "Terminé").id}")}

  # Validations.
  validates :title, presence: true
  validates :priority, presence: true
  validates :status, presence: true

end

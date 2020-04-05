# == Schema Information
#
# Table name: imputation_items
#
#  id                   :bigint           not null, primary key
#  imputation_id        :bigint
#  imputation_reason_id :bigint
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class ImputationItem < ApplicationRecord
  belongs_to :imputation
  belongs_to :imputation_reason
end

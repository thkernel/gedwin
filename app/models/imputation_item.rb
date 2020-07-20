# == Schema Information
#
# Table name: imputation_items
#
#  id                   :bigint           not null, primary key
#  uid                  :string
#  imputation_id        :bigint
#  imputation_reason_id :bigint
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class ImputationItem < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_uid

  belongs_to :imputation
 
end

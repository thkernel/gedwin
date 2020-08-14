# == Schema Information
#
# Table name: indices
#
#  id             :bigint           not null, primary key
#  name           :string
#  description    :text
#  status         :string
#  indexable_type :string
#  indexable_id   :bigint
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Index < ApplicationRecord
  belongs_to :user
  belongs_to :indexable, polymorphic: true

end

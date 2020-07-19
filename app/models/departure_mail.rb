# == Schema Information
#
# Table name: departure_mails
#
#  id                    :bigint           not null, primary key
#  register_id           :bigint
#  internal_reference    :string
#  departure_date        :datetime
#  linked_to_mail        :string
#  reference_linked_mail :string
#  to_answer             :string
#  response_limit_time   :datetime
#  response_date         :datetime
#  support_id            :bigint
#  nature_id             :bigint
#  correspondent_id      :bigint
#  object                :string
#  description           :text
#  binder_id             :bigint
#  status                :string
#  user_id               :bigint
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class DepartureMail < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_uid
  belongs_to :user

  has_many_attached :files

end

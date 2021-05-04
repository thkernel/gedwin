# == Schema Information
#
# Table name: smtp_configs
#
#  id                        :bigint           not null, primary key
#  smtp_host                 :string
#  smtp_user_name            :string
#  smtp_user_password        :string
#  smtp_domain               :string
#  smtp_address              :string
#  smtp_port                 :integer
#  smtp_authentification     :string
#  smtp_enable_starttls_auto :boolean
#  smtp_ssl                  :boolean
#  user_id                   :bigint
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class SmtpConfig < ApplicationRecord
  #belongs_to :user, optional: true

  # Validations.

  validates_presence_of :smtp_user_name, :smtp_user_password,  :smtp_address, :smtp_port, :smtp_authentification

end

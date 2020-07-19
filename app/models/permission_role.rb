# == Schema Information
#
# Table name: permission_roles
#
#  id            :bigint           not null, primary key
#  permission_id :bigint
#  role_id       :bigint
#  status        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class PermissionRole < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_uid

  belongs_to :permission
  belongs_to :role
end

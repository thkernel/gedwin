# == Schema Information
#
# Table name: google_drive_storage_attachments
#
#  id              :bigint           not null, primary key
#  name            :string           not null
#  attachable_type :string           not null
#  attachable_id   :bigint           not null
#  blob_id         :bigint           not null
#  created_at      :datetime         not null
#

class DriveAttachment < ApplicationRecord
    belongs_to :attachable, polymorphic: true
    belongs_to :drive_blob
end

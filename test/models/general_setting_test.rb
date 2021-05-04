# == Schema Information
#
# Table name: general_settings
#
#  id                              :bigint           not null, primary key
#  application_name                :string
#  login_screen_message            :string
#  home_screen_message             :string
#  logo                            :string
#  wallpaper                       :string
#  folder_prefix                   :string
#  folder_suffix                   :string
#  arrival_mail_reference_format   :string
#  departure_mail_reference_format :string
#  document_reference_format       :string
#  internal_memo_reference_format  :string
#  user_id                         :bigint
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#

require 'test_helper'

class GeneralSettingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

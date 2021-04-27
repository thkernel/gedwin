class GeneralSetting < ApplicationRecord
	belongs_to :user


	# For active storage
  	has_one_attached :logo
  	has_one_attached :wallpaper
end

class Ticket < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid

  
  belongs_to :user

  has_many_attached :files
end

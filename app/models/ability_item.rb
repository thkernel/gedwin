class AbilityItem < ApplicationRecord
  belongs_to :ability
  belongs_to :permission
end

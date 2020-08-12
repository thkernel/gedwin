class Index < ApplicationRecord
  belongs_to :user
  belongs_to :indexable, polymorphic: true

end

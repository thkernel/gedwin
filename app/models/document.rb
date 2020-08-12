class Document < ApplicationRecord
  belongs_to :support
  belongs_to :nature
  belongs_to :binder
  belongs_to :user

  has_many :imputations, as: :imputable,  dependent: :destroy
  
end

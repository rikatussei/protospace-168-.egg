class Prototype < ApplicationRecord
  has_many   :comments
  belongs to :user

  has_one_attached :image
end

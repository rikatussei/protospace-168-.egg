class Prototype < ApplicationRecord


  has_many   :comments
  belongs to :user
end

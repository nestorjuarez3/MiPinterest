class Car < ApplicationRecord
  validates :photo, presence:true
  validates :model, presence:true

  belongs_to :user
end

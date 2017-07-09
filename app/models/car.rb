class Car < ApplicationRecord
  validates :photo, presence:true
  validates :model, presence:true
end

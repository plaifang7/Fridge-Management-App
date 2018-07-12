class Fridge < ApplicationRecord
  has_many :foods, dependent: :destroy
  has_many :drinks, dependent: :destroy
  validates :location, :brand, :size, presence: true
  
end

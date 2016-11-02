class Prize < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :coins, numericality: { greater_than: -1 }
end

class User < ApplicationRecord
  validates   :username, uniqueness: true
  validates   :email, length: { in: 8..100 },
    format: { with: /\A([a-z0-9\-_\.]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}, on: :create
  validates :level, presence: true, numericality: { greater_than: -1 }
  validates :coins, presence: true, numericality: { greater_than: -1 }
end

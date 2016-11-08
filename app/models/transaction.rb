class Transaction < ApplicationRecord
	belongs_to :user
	validates :amount, presence: true, numericality: true
	validates :reason, presence: true
end

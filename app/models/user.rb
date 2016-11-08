class User < ApplicationRecord

  has_many :transactions	
  validates   :username, uniqueness: true
  validates   :email, length: { in: 8..100 },
    format: { with: /\A([a-z0-9\-_\.]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}, on: :create
  validates :level, presence: true, numericality: { greater_than: -1 }
  validates :coins, presence: true, numericality: { greater_than: -1 }

  def increment_coins(amount, reason)
  	change_coins(amount, reason)
  end

  def decrement_coins(amount, reason)
  	change_coins(-amount, reason)
  end

  def reset_coins
  	transaction = Transaction.new(amount: coins, reason: "Reseted coins", user: self)
  	self.coins = 0
  	self.save!
  	transaction.save!
  end

  private

  def change_coins(amount, reason)
  	self.coins = coins + amount
  	Transaction.create(amount: amount, reason: reason, user_id: id)
  	self.save!
  end

end

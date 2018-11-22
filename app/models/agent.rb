class Agent < ApplicationRecord
  validates :name, presence: true
  validates :status, inclusion: { in: ['available', 'offline', 'on_call'] }
  validates :admin,  inclusion: { in: [true, false] }, allow_nil: true
  validates :deleted, inclusion: { in: [true, false] }, allow_nil: true

  has_many :phone_calls
end

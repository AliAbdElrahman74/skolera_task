class Agent < ApplicationRecord
  
  acts_as_paranoid
  
  validates :name, presence: true
  validates :status, inclusion: { in: ['available', 'offline', 'on_call'] }
  validates :admin,  inclusion: { in: [true, false] }, allow_nil: true

  has_many :phone_calls
end

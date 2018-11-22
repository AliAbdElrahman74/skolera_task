class PhoneNumber < ApplicationRecord
  validates :number, presence: true
  validates :enabled, inclusion: { in: [true, false] }
  validates :deleted, inclusion: { in: [true, false] }, allow_nil: true

  has_many :phone_calls
end

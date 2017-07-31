class PhoneNumber < ApplicationRecord
  validates :number, presence: true
  validates :enabled, inclusion: { in: [true, false] }
end

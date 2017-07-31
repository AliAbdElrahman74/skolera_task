class PhoneNumber < ApplicationRecord
  validates :number, presence: true
  validates :enabled, presence: true
end

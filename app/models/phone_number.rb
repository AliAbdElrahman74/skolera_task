class PhoneNumber < ApplicationRecord
 
  acts_as_paranoid

  validates :number, presence: true ,format: { with: /\A^[\+|[00]](?:[0-9]●?){6,14}[0-9]$\z/ , message: " should start with a + or 00 , followed by the country code and national number"}
  validates :enabled, inclusion: { in: [true, false] }

  has_many :phone_calls
end

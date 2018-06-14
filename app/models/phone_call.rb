class PhoneCall < ApplicationRecord
  validates_presence_of :phone_number, :agent, :status

  belongs_to :phone_number
  belongs_to :agent
end

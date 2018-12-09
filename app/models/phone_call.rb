class PhoneCall < ApplicationRecord
  validates_presence_of :phone_number, :agent, :status

  belongs_to :phone_number , -> { with_deleted }
  belongs_to :agent , -> { with_deleted }
end


PhoneCall.includes(:agent).all
PhoneCall.includes(:phone_number).all

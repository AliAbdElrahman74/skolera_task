FactoryGirl.define do
  factory :phone_call do
    status 'ended'
    agent
    phone_number
  end
end

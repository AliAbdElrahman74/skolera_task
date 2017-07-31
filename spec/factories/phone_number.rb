FactoryGirl.define do
  factory :phone_number do
    sequence(:number) { |n| "+1234567#{n.to_s.ljust(4, '0')}"}
  end
end

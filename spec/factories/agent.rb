FactoryGirl.define do
  factory :agent do
    sequence(:name) { |n| "Name #{n}"}
    status 'available'
    admin false
  end
end

FactoryGirl.define do
  factory :user do
    sequence(:email)  { |i| "email#{i}@pfb.com" }
    sequence(:name)   { |i| "name#{i}" }
  end
end

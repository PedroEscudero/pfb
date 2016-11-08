FactoryGirl.define do
  factory :transaction do
    reason "MyString"
    amount 1
    user  {FactoryGirl.build :user}
  end
end

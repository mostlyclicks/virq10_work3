
FactoryGirl.define do
  factory :business, :class => Refinery::Businesses::Business do
    sequence(:company_name) { |n| "refinery#{n}" }
  end
end


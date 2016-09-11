FactoryGirl.define do
  factory :negative do |f|
    f.title "John"
    f.description "Good"
    f.when DateTime.now
  end
end
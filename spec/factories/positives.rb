FactoryGirl.define do
  factory :positive do |f|
    f.title "John"
    f.description "Wrong"
    f.when DateTime.now
  end
end
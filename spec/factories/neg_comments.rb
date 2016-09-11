FactoryGirl.define do
  factory :neg_comment do
    body "MyText"
    positive_reaction false
  end
end

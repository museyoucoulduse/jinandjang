require 'rails_helper'

RSpec.describe Positive, :type => :model do
  it "is valid with valid attributes" do
    FactoryGirl.create(:positive).should be_valid
  end
  it "is not valid without a title" do
    positive = Positive.new(title: nil)
    expect(positive).to_not be_valid
  end
  it "is not valid without a description" do
    positive = Positive.new(description: nil)
    expect(positive).to_not be_valid
  end
  it "is not valid without a when" do
    positive = Positive.new(when: nil)
    expect(positive).to_not be_valid
  end

end
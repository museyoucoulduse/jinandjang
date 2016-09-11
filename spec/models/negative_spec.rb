require 'rails_helper'

RSpec.describe Negative, :type => :model do
  it "is valid with valid attributes" do
    FactoryGirl.create(:negative).should be_valid
  end
  it "is not valid without a title" do
    negative = Negative.new(title: nil)
    expect(negative).to_not be_valid
  end
  it "is not valid without a description" do
    negative = Negative.new(description: nil)
    expect(negative).to_not be_valid
  end
  it "is not valid without a when" do
    negative = Negative.new(when: nil)
    expect(negative).to_not be_valid
  end

end
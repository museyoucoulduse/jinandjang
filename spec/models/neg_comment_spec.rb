require 'rails_helper'

RSpec.describe NegComment, type: :model do
  it 'should have body and reaction' do
    expect(NegComment.new).to_not be_valid
  end
  it 'should be added to negative comment' do
  
    post = FactoryGirl.create(:negative)
    post.neg_comments = [FactoryGirl.create(:neg_comment)]
    expect(post).to be_valid
  end
end

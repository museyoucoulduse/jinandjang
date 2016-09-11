require 'rails_helper'

RSpec.describe PosComment, type: :model do
  it 'should have body and reaction' do
    expect(PosComment.new).to_not be_valid
  end
  it 'should be added to positive comment' do
  
    post = FactoryGirl.create(:positive)
    post.pos_comments = [FactoryGirl.create(:pos_comment)]
    expect(post).to be_valid
  end
end
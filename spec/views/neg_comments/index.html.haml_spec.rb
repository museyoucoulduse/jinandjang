require 'rails_helper'

RSpec.describe "neg_comments/index", type: :view do
  before(:each) do
    assign(:neg_comments, [
      NegComment.create!(
        :body => "MyText",
        :positive_reaction => false
      ),
      NegComment.create!(
        :body => "MyText",
        :positive_reaction => false
      )
    ])
  end

  it "renders a list of neg_comments" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

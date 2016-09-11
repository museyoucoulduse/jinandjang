require 'rails_helper'

RSpec.describe "pos_comments/index", type: :view do
  before(:each) do
    assign(:pos_comments, [
      PosComment.create!(
        :body => "MyText",
        :positive_reaction => false
      ),
      PosComment.create!(
        :body => "MyText",
        :positive_reaction => false
      )
    ])
  end

  it "renders a list of pos_comments" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

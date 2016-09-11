require 'rails_helper'

RSpec.describe "neg_comments/edit", type: :view do
  before(:each) do
    @neg_comment = assign(:neg_comment, NegComment.create!(
      :body => "MyText",
      :positive_reaction => false
    ))
  end

  it "renders the edit neg_comment form" do
    render

    assert_select "form[action=?][method=?]", neg_comment_path(@neg_comment), "post" do

      assert_select "textarea#neg_comment_body[name=?]", "neg_comment[body]"

      assert_select "input#neg_comment_positive_reaction[name=?]", "neg_comment[positive_reaction]"
    end
  end
end

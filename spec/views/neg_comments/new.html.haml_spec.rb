require 'rails_helper'

RSpec.describe "neg_comments/new", type: :view do
  before(:each) do
    assign(:neg_comment, NegComment.new(
      :body => "MyText",
      :positive_reaction => false
    ))
  end

  it "renders new neg_comment form" do
    render

    assert_select "form[action=?][method=?]", neg_comments_path, "post" do

      assert_select "textarea#neg_comment_body[name=?]", "neg_comment[body]"

      assert_select "input#neg_comment_positive_reaction[name=?]", "neg_comment[positive_reaction]"
    end
  end
end

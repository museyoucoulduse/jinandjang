require 'rails_helper'

RSpec.describe "pos_comments/new", type: :view do
  before(:each) do
    assign(:pos_comment, PosComment.new(
      :body => "MyText",
      :positive_reaction => false
    ))
  end

  it "renders new pos_comment form" do
    render

    assert_select "form[action=?][method=?]", pos_comments_path, "post" do

      assert_select "textarea#pos_comment_body[name=?]", "pos_comment[body]"

      assert_select "input#pos_comment_positive_reaction[name=?]", "pos_comment[positive_reaction]"
    end
  end
end

require 'rails_helper'

RSpec.describe "pos_comments/edit", type: :view do
  before(:each) do
    @pos_comment = assign(:pos_comment, PosComment.create!(
      :body => "MyText",
      :positive_reaction => false
    ))
  end

  it "renders the edit pos_comment form" do
    render

    assert_select "form[action=?][method=?]", pos_comment_path(@pos_comment), "post" do

      assert_select "textarea#pos_comment_body[name=?]", "pos_comment[body]"

      assert_select "input#pos_comment_positive_reaction[name=?]", "pos_comment[positive_reaction]"
    end
  end
end

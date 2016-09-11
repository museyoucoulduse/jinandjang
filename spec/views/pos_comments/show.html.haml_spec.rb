require 'rails_helper'

RSpec.describe "pos_comments/show", type: :view do
  before(:each) do
    @pos_comment = assign(:pos_comment, PosComment.create!(
      :body => "MyText",
      :positive_reaction => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end

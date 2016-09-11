require 'rails_helper'

RSpec.describe "neg_comments/show", type: :view do
  before(:each) do
    @neg_comment = assign(:neg_comment, NegComment.create!(
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

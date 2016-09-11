require 'rails_helper'

RSpec.describe "NegComments", type: :request do
  describe "GET /neg_comments" do
    it "works! (now write some real specs)" do
      get neg_comments_path
      expect(response).to have_http_status(200)
    end
  end
end

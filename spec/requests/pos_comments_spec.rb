require 'rails_helper'

RSpec.describe "PosComments", type: :request do
  describe "GET /pos_comments" do
    it "works! (now write some real specs)" do
      get pos_comments_path
      expect(response).to have_http_status(200)
    end
  end
end

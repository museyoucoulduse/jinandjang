require "rails_helper"

RSpec.describe NegCommentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/neg_comments").to route_to("neg_comments#index")
    end

    it "routes to #new" do
      expect(:get => "/neg_comments/new").to route_to("neg_comments#new")
    end

    it "routes to #show" do
      expect(:get => "/neg_comments/1").to route_to("neg_comments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/neg_comments/1/edit").to route_to("neg_comments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/neg_comments").to route_to("neg_comments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/neg_comments/1").to route_to("neg_comments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/neg_comments/1").to route_to("neg_comments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/neg_comments/1").to route_to("neg_comments#destroy", :id => "1")
    end

  end
end

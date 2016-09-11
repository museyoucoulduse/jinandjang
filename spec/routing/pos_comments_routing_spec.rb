require "rails_helper"

RSpec.describe PosCommentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pos_comments").to route_to("pos_comments#index")
    end

    it "routes to #new" do
      expect(:get => "/pos_comments/new").to route_to("pos_comments#new")
    end

    it "routes to #show" do
      expect(:get => "/pos_comments/1").to route_to("pos_comments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pos_comments/1/edit").to route_to("pos_comments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pos_comments").to route_to("pos_comments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pos_comments/1").to route_to("pos_comments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pos_comments/1").to route_to("pos_comments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pos_comments/1").to route_to("pos_comments#destroy", :id => "1")
    end

  end
end

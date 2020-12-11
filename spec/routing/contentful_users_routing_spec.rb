require "rails_helper"

RSpec.describe ContentfulUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contentful_users").to route_to("contentful_users#index")
    end

    it "routes to #new" do
      expect(:get => "/contentful_users/new").to route_to("contentful_users#new")
    end

    it "routes to #show" do
      expect(:get => "/contentful_users/1").to route_to("contentful_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contentful_users/1/edit").to route_to("contentful_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contentful_users").to route_to("contentful_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contentful_users/1").to route_to("contentful_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contentful_users/1").to route_to("contentful_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contentful_users/1").to route_to("contentful_users#destroy", :id => "1")
    end

  end
end

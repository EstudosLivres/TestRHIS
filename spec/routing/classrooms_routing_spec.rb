require "rails_helper"

RSpec.describe ClassroomsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/classrooms").to route_to("classrooms#index")
    end

    it "routes to #new" do
      expect(:get => "/classrooms/new").to route_to("classrooms#new")
    end

    it "routes to #show" do
      expect(:get => "/classrooms/1").to route_to("classrooms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/classrooms/1/edit").to route_to("classrooms#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/classrooms").to route_to("classrooms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/classrooms/1").to route_to("classrooms#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/classrooms/1").to route_to("classrooms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/classrooms/1").to route_to("classrooms#destroy", :id => "1")
    end

  end
end

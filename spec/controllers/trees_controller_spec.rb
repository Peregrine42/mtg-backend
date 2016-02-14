require "rails_helper"

describe TreesController do
  
  before do
    allow(Tree).to receive(:new).with(id: "1").and_return :the_tree
  end
  
  it "creates a tree from the given root id" do
    get :show, id: "1"
    expect(assigns(:tree)).to be :the_tree
  end
end
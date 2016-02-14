require "rails_helper"

describe Tree do
  let(:root)    { double(:root, to_h: { x: 60, y: 50, nodes: [:n1, :n2] }) }
  let(:subject) { Tree.new(id: "1") }
  
  before do
    allow(Root).to receive(:find).with("1").and_return root
  end
  
  it "can return its root as a hash" do
    expect(subject.to_h).to eq({ x: 60, y: 50, nodes: [ :n1, :n2 ] })
  end
end
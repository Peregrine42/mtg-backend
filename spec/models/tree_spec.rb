require "rails_helper"

describe Tree do
  let(:n1)      { double(:n1,   to_h: { a: "b", nodes: [] }) }
  let(:n2)      { double(:n2,   to_h: { c: "d", nodes: [] }) }
  let(:root)    { double(:root, to_h: { x: 60, y: 50, nodes: [n1, n2] }) }
  let(:subject) { Tree.new(id: "1") }
  
  before do
    allow(Root).to receive(:find).with("1").and_return root
  end
  
  it "can return itself as a hash" do
    expect(subject.to_h).to eq(
      { x: 60, y: 50, 
        nodes: [ { a: "b", nodes: [] }, { c: "d", nodes: [] } ] 
      }
    )
  end
end
Given(/^there are nodes linked to a root in the database$/) do
  root = Node.create! id: 1
  n2 = Node.create! id: 2, x: 50, y: 60, rot: 90, node: root
  n3 = Node.create! id: 3, x: 30, y: -30, scale: 0.5, node: root
  Root.create! node: root
  Card.create! img: "img1.png", node: n2
  Card.create! img: "img2.png", node: n3
end

When(/^I visit the current board page$/) do
  visit "/trees/1.json"
end

Then(/^I see the nodes on the page as JSON$/) do
  tree = { 
    "id" => 1, 
    "x" => 0, 
    "y" => 0, 
    "scale" => 1.0, 
    "rot" => 0.0,
    "character" => { "root" => true },
    "nodes" => [
      { "id" => 2, 
        "x" => 50, 
        "y" => 60, 
        "scale" => 1.0, 
        "rot" => 90,
        "character" => { "img" => "img1.png" },
        "nodes" => [] 
      },
      { "id" => 3, 
        "x" => 30, 
        "y" => -30, 
        "scale" => 0.5, 
        "rot" => 0.0, 
        "character" => { "img" => "img2.png" },
        "nodes" => [] 
      }
    ] 
  }
  expect(JSON.parse(page.body)).to eq tree
end
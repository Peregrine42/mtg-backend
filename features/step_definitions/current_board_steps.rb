Given(/^there are nodes linked to a root in the database$/) do
  root = Node.create! id: 1
  n2 = Node.create! id: 2, x: 50, y: 60, rot: 90, node: root
  n3 = Node.create! id: 3, x: 30, y: -30, scale: 0.5, node: root
  Root.create! node: root
  Card.create! img: "img1.png", node: n2
  Card.create! img: "img2.png", node: n3
end

When(/^I visit the current board page$/) do
  visit "/"
end

Then(/^I see the nodes on the page as JSON$/) do
  tree = {
    root: { id: 1, x: 0, y: 0, rot: 0, scale: 1, 
      nodes: [
        { id: 2, x: 50, y: 60, rot: 90, scale: 1, img: "img1.png",
          nodes: [] 
        },
        { id: 3, x: 30, y: -30, rot: 0, scale: 0.5, img: "img2.png",
          nodes: [] 
        }
      ] 
    }
  }
  expect(JSON.parse(page.body)).to eq tree
end
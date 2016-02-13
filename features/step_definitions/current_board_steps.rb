Given(/^there are nodes linked to a root in the database$/) do
  n1 = Node.create!(id: 2, x: 50, y: 60, img: "img1.png", rot: 90)
  n2 = Node.create!(id: 3, x: -20, y: 60, img: "img2.png", scale: 0.5)
  root = Root.create!(id: 1, children: [n1, n2])
end

When(/^I visit the current board page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I see the nodes on the page$/) do
  pending # express the regexp above with the code you wish you had
end
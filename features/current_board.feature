Feature: the current board

@wip
Scenario: I want to see the nodes currently on the board
  Given there are nodes linked to a root in the database
  When I visit the current board page
  Then I see the nodes on the page
object @node
attributes :id, :x, :y, :scale, :rot
attribute :character
child :nodes => :nodes do
  extends "trees/show"
end
class Tree
  attr_reader :id
  
  def initialize **kwargs
    @id = kwargs[:id]
  end
  
  def to_h
    root = Root.find(id)
    root_as_h = root.to_h
    root_as_h[:nodes] = root_as_h[:nodes].map(&:to_h)
    root_as_h
  end
end
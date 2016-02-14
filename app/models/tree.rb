class Tree
  attr_reader :id
  
  def initialize **kwargs
    @id = kwargs[:id]
  end
  
  def to_h
    Root.find(id).to_h
  end
end
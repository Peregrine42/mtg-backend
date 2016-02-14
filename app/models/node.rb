class Node < ActiveRecord::Base
  belongs_to :graphable, polymorphic: true
  belongs_to :node
  has_many :nodes
  after_initialize :set_defaults
  
  def set_defaults
    self.x ||= 0
    self.y ||= 0
    self.scale ||= 1.0
    self.rot ||= 0
  end
  
  def character
    graphable.character
  end
end

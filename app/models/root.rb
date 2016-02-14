class Root < ActiveRecord::Base
  has_one :node, as: :graphable
  
  def character
    return { "root" => true }
  end
end

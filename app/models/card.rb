class Card < ActiveRecord::Base
  has_one :node, as: :graphable
  
  def character
    return { "img" => img }
  end
end

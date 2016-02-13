class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.belongs_to :node
      t.integer :x
      t.integer :y
      t.float :rot
      t.float :scale
      t.timestamps null: false
    end
  end
end

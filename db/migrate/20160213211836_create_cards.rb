class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to :node
      t.string :img
      t.timestamps null: false
    end
  end
end

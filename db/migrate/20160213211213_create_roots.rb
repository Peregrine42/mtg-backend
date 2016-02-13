class CreateRoots < ActiveRecord::Migration
  def change
    create_table :roots do |t|
      t.belongs_to :node
      t.timestamps null: false
    end
  end
end

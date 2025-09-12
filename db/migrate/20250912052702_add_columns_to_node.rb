class AddColumnsToNode < ActiveRecord::Migration[8.0]
  def change
    add_column :nodes, :name, :string, null: true
    add_index :nodes, :parent_id
    add_index :nodes, :child_id
  end
end

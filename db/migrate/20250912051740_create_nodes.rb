class CreateNodes < ActiveRecord::Migration[8.0]
  def change
    create_table :nodes do |t|
      t.string :parent_id
      t.string :child_id

      t.timestamps
    end
  end
end

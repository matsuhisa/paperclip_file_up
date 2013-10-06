class CreateImageings < ActiveRecord::Migration
  def change
    create_table :imageings do |t|
      t.integer :parent_id
      t.string :parent_type
      t.integer :status

      t.timestamps
    end
  end
end

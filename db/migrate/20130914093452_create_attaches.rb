class CreateAttaches < ActiveRecord::Migration
  def change
    create_table :attaches do |t|
      t.string :file
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

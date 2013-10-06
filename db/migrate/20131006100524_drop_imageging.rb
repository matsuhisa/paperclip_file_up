class DropImageging < ActiveRecord::Migration
  def change
    drop_table :imageings
  end
end

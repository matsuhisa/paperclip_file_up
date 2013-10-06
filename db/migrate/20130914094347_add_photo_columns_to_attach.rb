class AddPhotoColumnsToAttach < ActiveRecord::Migration
  def change
    add_column :attaches, :photo_file_name,    :string
    add_column :attaches, :photo_content_type, :string
    add_column :attaches, :photo_file_size,    :integer
    add_column :attaches, :photo_updated_at,   :datetime
  end
end

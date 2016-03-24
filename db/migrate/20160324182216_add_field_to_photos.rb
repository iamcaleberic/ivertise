class AddFieldToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :role, :string
  end
end

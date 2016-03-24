class AddFieldToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :role_photo, :string
  end
end

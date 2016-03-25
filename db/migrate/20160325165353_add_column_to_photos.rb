class AddColumnToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :approved, :boolean
  end
end

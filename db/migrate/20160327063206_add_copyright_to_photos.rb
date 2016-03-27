class AddCopyrightToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :copyright, :string
  end
end

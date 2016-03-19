class AddFieldsToPhotos < ActiveRecord::Migration
  def change
  	add_column :photos, :title, :string
  	add_column :photos, :price, :integer
  	add_column :photos, :description, :string
  	add_column :photos, :keywords, :string
  end
end

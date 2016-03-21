class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone, :integer
    add_column :users, :country, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :gender, :string
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :city, :string
    add_column :users, :bust, :integer
    add_column :users, :waist, :integer
    add_column :users, :eye_color, :string
    add_column :users, :shoe_size, :integer
  end
end

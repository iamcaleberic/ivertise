class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mua_type, :string
  end
end

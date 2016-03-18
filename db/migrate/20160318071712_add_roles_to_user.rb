class AddRolesToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_admin, :boolean
    add_column :users, :is_mua, :boolean
    add_column :users, :is_contributor, :boolean
    add_column :users, :is_model, :boolean
  end
end

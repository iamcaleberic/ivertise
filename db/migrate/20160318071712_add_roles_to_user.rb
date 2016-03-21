class AddRolesToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_mua, :boolean, default: false
    add_column :users, :is_contributor, :boolean, default: false
    add_column :users, :is_model, :boolean, default: false
    add_column :users, :is_photographer, :boolean, default: false
  end
end

class AddFieldToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :names, :string
  end
end

class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :experience, :string
    add_column :users, :job_interest, :string
    add_column :users, :dislikes, :string
  end
end

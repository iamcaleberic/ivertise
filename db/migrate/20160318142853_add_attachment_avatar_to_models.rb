class AddAttachmentAvatarToModels < ActiveRecord::Migration
  def self.up
    change_table :models do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :models, :avatar
  end
end

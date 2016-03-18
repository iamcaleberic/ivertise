class AddAttachmentAvatarToMuas < ActiveRecord::Migration
  def self.up
    change_table :muas do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :muas, :avatar
  end
end

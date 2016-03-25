class AddAttachmentLicenceToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :licence
    end
  end

  def self.down
    remove_attachment :photos, :licence
  end
end

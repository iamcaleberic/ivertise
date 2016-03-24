class AddAttachmentReleaseFormToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :release_form
    end
  end

  def self.down
    remove_attachment :photos, :release_form
  end
end

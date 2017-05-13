class AddAttachmentImageToPlats < ActiveRecord::Migration
  def self.up
    change_table :plats do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :plats, :image
  end
end

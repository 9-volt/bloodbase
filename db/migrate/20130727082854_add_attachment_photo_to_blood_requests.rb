class AddAttachmentPhotoToBloodRequests < ActiveRecord::Migration
  def self.up
    change_table :blood_requests do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :blood_requests, :photo
  end
end

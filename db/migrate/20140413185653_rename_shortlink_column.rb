class RenameShortlinkColumn < ActiveRecord::Migration
  def change
    rename_column :shortlinks, :blood_request_id, :card_id
  end
end

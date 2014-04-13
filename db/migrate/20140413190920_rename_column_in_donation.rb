class RenameColumnInDonation < ActiveRecord::Migration
  def change
    rename_column :donations, :blood_request_id, :card_id
  end
end

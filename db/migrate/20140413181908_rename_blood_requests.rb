class RenameBloodRequests < ActiveRecord::Migration
  def change
    rename_table :blood_requests, :cards
    add_column   :cards, :type, :string, :default => "BloodRequest"
  end
end

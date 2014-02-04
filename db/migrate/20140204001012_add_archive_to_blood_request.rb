class AddArchiveToBloodRequest < ActiveRecord::Migration
  def change
    add_column :blood_requests, :archived, :boolean, :default => false
  end
end

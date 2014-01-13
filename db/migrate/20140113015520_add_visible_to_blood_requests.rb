class AddVisibleToBloodRequests < ActiveRecord::Migration
  def change
    add_column :blood_requests, :visible, :boolean, :default => false, :null => false
  end
end

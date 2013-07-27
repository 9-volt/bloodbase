class BloodRequestEmail < ActiveRecord::Migration
  def change
    rename_column :blood_requests, :contacts, :email
  end
end

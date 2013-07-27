class BloodRequestDescription < ActiveRecord::Migration
  def change
    change_table :blood_requests do |t|
      t.text :description
    end
  end
end

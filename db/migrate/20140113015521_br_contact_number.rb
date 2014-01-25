class BrContactNumber < ActiveRecord::Migration
  def change
    change_table :blood_requests do |t|
      t.string :contact_number
    end
  end
end

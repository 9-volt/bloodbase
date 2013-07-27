class BloodRequestData < ActiveRecord::Migration
  def change
    change_table :blood_requests do |t|
      t.string :hospital
      t.string :section
      t.integer :persons_required
    end
  end
end

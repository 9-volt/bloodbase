class DonationData < ActiveRecord::Migration
  def change
    change_table :donations do |t|
      t.string :full_name
      t.string :gender
      t.datetime :birthdate
      t.string :blood_group
      t.string :blood_rh
      t.string :phone
      t.string :email
      t.string :id_number
      t.datetime :donate_at
    end
  end
end

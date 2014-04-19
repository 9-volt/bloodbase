class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.references :card
      t.references :user
      t.string :full_name
      t.string :gender
      t.datetime :birthdate
      t.string :blood_group
      t.string :blood_rh
      t.string :phone
      t.string :email
      t.string :id_number
      t.string :code
      t.datetime :donate_at

      t.timestamps
    end
  end
end

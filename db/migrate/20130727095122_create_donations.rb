class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.references :blood_request
      t.references :user

      t.timestamps
    end
  end
end

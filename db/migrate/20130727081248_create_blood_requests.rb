class CreateBloodRequests < ActiveRecord::Migration
  def change
    create_table :blood_requests do |t|
      t.string :person_name
      t.string :contacts

      t.timestamps
    end
  end
end

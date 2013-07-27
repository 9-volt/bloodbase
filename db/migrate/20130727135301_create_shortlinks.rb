class CreateShortlinks < ActiveRecord::Migration
  def change
    create_table :shortlinks do |t|
      t.references :blood_request
      t.string :code

      t.timestamps
    end
  end
end

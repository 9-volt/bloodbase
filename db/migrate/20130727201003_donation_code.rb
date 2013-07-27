class DonationCode < ActiveRecord::Migration
  def change
    change_table :donations do |t|
      t.string :code
    end
  end
end

class BrIssuerName < ActiveRecord::Migration
  def change
    change_table :blood_requests do |t|
      t.string :issuer_name
    end
  end
end

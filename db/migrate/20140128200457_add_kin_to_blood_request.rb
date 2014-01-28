class AddKinToBloodRequest < ActiveRecord::Migration
  def change
    add_column :blood_requests, :kin, :string
  end
end

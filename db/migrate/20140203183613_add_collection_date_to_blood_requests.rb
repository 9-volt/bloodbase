class AddCollectionDateToBloodRequests < ActiveRecord::Migration
  def change
    add_column :blood_requests, :collection_date, :date
  end
end

class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string     :person_name
      t.string     :email
      t.string     :hospital
      t.string     :section
      t.string     :issuer_name
      t.string     :contact_number
      t.string     :kin
      t.string     :type,             :default => "BloodRequest"
      t.string     :short_description
      t.integer    :persons_required, :default => 0, :null => false
      t.integer    :donated,          :default => 0
      t.text       :description
      t.date       :collection_date
      t.boolean    :archived,         :default => false
      t.boolean    :visible,          :default => false, :null => false
      t.attachment :photo

      t.timestamps
    end
  end
end

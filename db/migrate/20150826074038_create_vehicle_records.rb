class CreateVehicleRecords < ActiveRecord::Migration
  def change
    create_table :vehicle_records do |t|
    	t.string :record_type
    	#t.string :record_attachment
    	t.date :expiration_date
    	t.integer :vehicle_id
      t.timestamps null: false
    end
  end
end

class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
    	t.string :name
    	t.integer :age
    	t.string :blood_group
    	t.integer :mobile_no
    	t.integer :emergency_contact
    	t.string :address
    	t.date :dl_expiration
    	t.boolean :back_ground_check, default: false

      t.timestamps null: false
    end
  end
end

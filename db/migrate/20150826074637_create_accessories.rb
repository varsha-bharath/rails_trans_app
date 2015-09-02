class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
    	t.string :name
    	t.float :cost
    	t.string :model
    	t.integer :vehicle_id
      t.timestamps null: false
    end
  end
end

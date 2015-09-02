class CreateVehiclePayments < ActiveRecord::Migration
  def change
    create_table :vehicle_payments do |t|
    	t.string :amount_type
    	t.float :amount_paid
    	t.date :payment_date
    	t.string :mode_of_payment
    	t.integer :vehicle_id
    	t.timestamps null: false
    
    end
  end
end

class ChangeDataTypeIntegerToString < ActiveRecord::Migration
  def change
  	change_table :drivers do |t|
  		t.change :mobile_no ,:string
  		t.change :emergency_contact, :string
  	end
  	change_column :clients, :phone, :string
  	
  end
end

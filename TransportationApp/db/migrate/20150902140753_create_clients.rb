class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
    	t.string :name
    	t.string :p_o_c
    	t.string :email
    	t.integer :phone
    	t.string :location

      t.timestamps null: false
    end
  end
end

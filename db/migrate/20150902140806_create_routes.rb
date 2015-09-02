class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
    	t.string :name
	   	t.float  :latitude
    	t.float  :longitude
    	t.string :possition

      t.timestamps null: false
    end
  end
end

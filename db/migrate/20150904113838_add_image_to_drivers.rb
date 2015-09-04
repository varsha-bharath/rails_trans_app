class AddImageToDrivers < ActiveRecord::Migration
   def self.up
       change_table :drivers do |f|
        f.attachment :image_p
         f.attachment :image_dl
       end
  end

  def self.down
  	   remove_attachment :drivers, :image_p
        remove_attachment :drivers, :image_dl
  end
end

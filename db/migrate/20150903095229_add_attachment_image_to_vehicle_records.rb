class AddAttachmentImageToVehicleRecords < ActiveRecord::Migration
  def self.up
    change_table :vehicle_records do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :vehicle_records, :image
  end
end

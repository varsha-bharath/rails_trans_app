class AddAttachmentImageToVehiclePayments < ActiveRecord::Migration
  def self.up
    change_table :vehicle_payments do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :vehicle_payments, :image
  end
end

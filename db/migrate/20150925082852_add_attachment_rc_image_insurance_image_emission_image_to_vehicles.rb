class AddAttachmentRcImageInsuranceImageEmissionImageToVehicles < ActiveRecord::Migration
  def self.up
    change_table :vehicles do |t|
      t.attachment :rc_image
      t.attachment :insurance_image
      t.attachment :emission_image
    end
  end

  def self.down
    remove_attachment :vehicles, :rc_image
    remove_attachment :vehicles, :insurance_image
    remove_attachment :vehicles, :emission_image
  end
end

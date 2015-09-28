class AddAttachmentInvoiceImageToAccessories < ActiveRecord::Migration
  def self.up
    change_table :accessories do |t|
      t.attachment :invoice_image
    end
  end

  def self.down
    remove_attachment :accessories, :invoice_image
  end
end

class AddVehicleRecordCollumnsToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :rc_expiration_date, :date
    add_column :vehicles, :insurance_expiration_date, :date
    add_column :vehicles, :emission_expiration_date, :date
  end
end

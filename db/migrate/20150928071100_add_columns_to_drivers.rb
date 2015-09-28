class AddColumnsToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :pan, :string
    add_column :drivers, :bank_account, :string
    add_column :drivers, :ifsc_code, :string
    add_column :drivers, :driver_salary, :integer
  end
end

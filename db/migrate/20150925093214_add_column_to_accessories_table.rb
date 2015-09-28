class AddColumnToAccessoriesTable < ActiveRecord::Migration
  def change
    add_column :accessories, :serial_no, :string
  end
end

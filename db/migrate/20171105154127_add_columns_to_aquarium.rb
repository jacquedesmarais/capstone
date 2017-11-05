class AddColumnsToAquarium < ActiveRecord::Migration[5.1]
  def change
    add_column :aquaria, :lat, :decimal, precision: 15, scale: 10
    add_column :aquaria, :long, :decimal, precision: 15, scale: 10
    add_column :aquaria, :address, :string
  end
end

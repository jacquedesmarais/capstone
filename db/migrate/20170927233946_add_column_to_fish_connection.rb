class AddColumnToFishConnection < ActiveRecord::Migration[5.1]
  def change
    add_column :fish_connections, :sighting_id, :integer
    add_column :fish_connections, :fish_id, :integer
    add_column :fish_connections, :score, :integer
  end
end

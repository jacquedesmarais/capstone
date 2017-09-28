class AddColumnToAquariumFishes < ActiveRecord::Migration[5.1]
  def change
    add_column :aquarium_fishes, :fish_id, :integer
    add_column :aquarium_fishes, :aquarium_id, :integer
  end
end

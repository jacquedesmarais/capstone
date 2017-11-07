class AddAquariumIdToFishes < ActiveRecord::Migration[5.1]
  def change
    add_column :fish, :aquarium_id, :integer
  end
end

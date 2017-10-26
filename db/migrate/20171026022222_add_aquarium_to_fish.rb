class AddAquariumToFish < ActiveRecord::Migration[5.1]
  def change
    add_column :fish, :aquarium_name, :string
  end
end

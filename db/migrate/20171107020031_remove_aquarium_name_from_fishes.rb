class RemoveAquariumNameFromFishes < ActiveRecord::Migration[5.1]
  def change
    remove_column :fish, :aquarium_name, :string
  end
end

class RenameTableAquarium < ActiveRecord::Migration[5.1]
  def change
    rename_table :aquarium, :aquariums
  end
end

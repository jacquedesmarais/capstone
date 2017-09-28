class RenameTableAquaria < ActiveRecord::Migration[5.1]
  def change
    rename_table :aquaria, :aquarium
  end
end

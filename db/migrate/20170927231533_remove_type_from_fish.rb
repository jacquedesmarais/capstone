class RemoveTypeFromFish < ActiveRecord::Migration[5.1]
  def change
    remove_column :fish, :type, :string
    add_column :fish, :family, :string
  end
end

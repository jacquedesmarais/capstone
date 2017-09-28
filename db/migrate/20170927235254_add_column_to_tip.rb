class AddColumnToTip < ActiveRecord::Migration[5.1]
  def change
    add_column :tips, :aquarium_id, :integer
    add_column :tips, :note, :string
  end
end

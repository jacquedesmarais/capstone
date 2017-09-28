class AddColumnToAquarium < ActiveRecord::Migration[5.1]
  def change
    add_column :aquaria, :name, :string
  end
end

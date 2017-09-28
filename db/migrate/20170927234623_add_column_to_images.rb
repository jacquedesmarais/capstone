class AddColumnToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :fish_id, :integer
    add_column :images, :url, :string
  end
end

class AddColumnToSighting < ActiveRecord::Migration[5.1]
  def change
    add_column :sightings, :user_id, :integer
    add_column :sightings, :url, :string
    add_column :sightings, :description, :string
    add_column :sightings, :aquarium_id, :integer
  end
end

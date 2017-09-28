class CreateSightings < ActiveRecord::Migration[5.1]
  def change
    create_table :sightings do |t|

      t.timestamps
    end
  end
end

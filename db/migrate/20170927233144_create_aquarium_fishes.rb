class CreateAquariumFishes < ActiveRecord::Migration[5.1]
  def change
    create_table :aquarium_fishes do |t|

      t.timestamps
    end
  end
end

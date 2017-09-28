class CreateFish < ActiveRecord::Migration[5.1]
  def change
    create_table :fish do |t|
      t.string :name
      t.string :type
      t.string :color
      t.string :description

      t.timestamps
    end
  end
end

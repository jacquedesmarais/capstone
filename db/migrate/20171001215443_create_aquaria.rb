class CreateAquaria < ActiveRecord::Migration[5.1]
  def change
    create_table :aquaria do |t|
      t.string :name
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end

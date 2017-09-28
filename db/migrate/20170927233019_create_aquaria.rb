class CreateAquaria < ActiveRecord::Migration[5.1]
  def change
    create_table :aquaria do |t|

      t.timestamps
    end
  end
end

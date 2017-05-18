class CreateFruitFarmers < ActiveRecord::Migration[5.0]
  def change
    create_table :fruit_farmers do |t|
      t.integer :fruit_id
      t.integer :farmer_id

      t.timestamps

    end
  end
end

class CreateFruits < ActiveRecord::Migration[5.0]
  def change
    create_table :fruits do |t|
      t.string :name
      t.date :harvest_start_date
      t.date :harvest_end_date

      t.timestamps

    end
  end
end

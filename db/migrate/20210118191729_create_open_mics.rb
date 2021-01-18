class CreateOpenMics < ActiveRecord::Migration[6.1]
  def change
    create_table :open_mics do |t|
      t.string :name
      t.string :genre
      t.string :location
      t.string :day
      t.string :time
      t.string :stage_time
      t.string :sign_up_protocol
      t.integer :cover
      t.string :drink_or_food_minimum

      t.timestamps
    end
  end
end

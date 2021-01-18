class CreateUpdates < ActiveRecord::Migration[6.1]
  def change
    create_table :updates do |t|
      t.integer :user_id
      t.integer :open_mic_id
      t.text :body

      t.timestamps
    end
  end
end

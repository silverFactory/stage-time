class CreateSupports < ActiveRecord::Migration[6.1]
  def change
    create_table :supports do |t|
      t.integer :user_id
      t.integer :open_mic_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

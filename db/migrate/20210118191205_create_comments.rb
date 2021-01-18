class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :open_mic_id
      t.integer :missed_connection_id
      t.integer :support_id
      t.text :body

      t.timestamps
    end
  end
end

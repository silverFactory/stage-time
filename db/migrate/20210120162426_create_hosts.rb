class CreateHosts < ActiveRecord::Migration[6.1]
  def change
    create_table :hosts do |t|
      t.integer :user_id
      t.integer :open_mic_id

      t.timestamps
    end
  end
end

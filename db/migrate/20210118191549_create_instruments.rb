class CreateInstruments < ActiveRecord::Migration[6.1]
  def change
    create_table :instruments do |t|
      t.integer :open_mic_id
      t.string :type
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end

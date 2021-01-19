class AddColumnsToSupports < ActiveRecord::Migration[6.1]
  def change
    change_table :supports do |t|
      t.boolean :missed_connection
      t.boolean :lend_a_hand
    end
  end
end

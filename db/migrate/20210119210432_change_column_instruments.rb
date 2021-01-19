class ChangeColumnInstruments < ActiveRecord::Migration[6.1]
  def change
    change_table :instruments do |t|
      t.rename :type, :name
    end
  end
end

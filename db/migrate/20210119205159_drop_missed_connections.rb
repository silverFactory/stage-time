class DropMissedConnections < ActiveRecord::Migration[6.1]
  def change
    drop_table(:missed_connections)
  end
end

class RemoveColumnFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :missed_connection_id
  end
end

class RemoveUserIdFromUpdates < ActiveRecord::Migration[6.1]
  def change
    remove_column :updates, :user_id
  end
end

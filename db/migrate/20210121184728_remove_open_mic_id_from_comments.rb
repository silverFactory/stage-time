class RemoveOpenMicIdFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :open_mic_id
  end
end

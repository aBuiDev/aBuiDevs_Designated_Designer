class RemoveDesignerIdFromMessages < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages, :designer_id
  end
end

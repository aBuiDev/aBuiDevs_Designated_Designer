class ChangeColumnClientsDesignerToNotNull < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :client_id, :int, null: false, unique: true, auto_increment: true
    change_column :users, :designer_id, :int, null: false, unique: true, auto_increment: true
  end

  def down
    change_column :users, :client_id, :int, null: false, unique: true, auto_increment: true
    change_column :users, :designer_id, :int, null: false, unique: true, auto_increment: true
  end
end

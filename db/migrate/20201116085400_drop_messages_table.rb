class DropMessagesTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :messages do |t|
      t.bigint :project_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end

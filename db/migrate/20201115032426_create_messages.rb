class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :project, null: false, foreign_key: true
      t.string :message_content

      t.timestamps
    end
  end
end

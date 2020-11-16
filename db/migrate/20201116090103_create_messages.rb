class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :chatbox, null: false, foreign_key: true
      t.references :designer, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.text :message_content
      t.string :from

      t.timestamps
    end
  end
end

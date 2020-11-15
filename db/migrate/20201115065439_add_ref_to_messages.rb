class AddRefToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :designer, null: true, foreign_key: true
    add_reference :messages, :client, null: true, foreign_key: true
  end
end

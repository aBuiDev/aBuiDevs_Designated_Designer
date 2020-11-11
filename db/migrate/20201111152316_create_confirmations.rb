class CreateConfirmations < ActiveRecord::Migration[6.0]
  def change
    create_table :confirmations do |t|
      t.integer :designer_confirmation
      t.integer :client_confirmation
      t.integer :payment_status
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :payment_status
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end

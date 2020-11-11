class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :address_one
      t.string :address_two
      t.string :address_three
      t.string :city
      t.string :state
      t.string :country
      t.string :post_code
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

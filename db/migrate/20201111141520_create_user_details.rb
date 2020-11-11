class CreateUserDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :user_details do |t|
      t.string :first_name
      t.string :last_name
      t.integer :mobile
      t.integer :age
      t.text :bio, null: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

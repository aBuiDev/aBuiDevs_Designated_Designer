class CreateFinalisations < ActiveRecord::Migration[6.0]
  def change
    create_table :finalisations do |t|
      t.integer :client_status
      t.integer :designer_status
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end

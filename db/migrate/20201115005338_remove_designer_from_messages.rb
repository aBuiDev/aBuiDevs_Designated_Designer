class RemoveDesignerFromMessages < ActiveRecord::Migration[6.0]
  def change
    remove_reference :messages, :designer, null: false, foreign_key: true
  end
end

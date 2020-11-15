class AddFromToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :from, :text
  end
end

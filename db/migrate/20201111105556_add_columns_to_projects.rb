class AddColumnsToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :brief, :text, null: false
    add_column :projects, :timeframe, :integer
    add_column :projects, :designer_accept, :integer
    add_column :projects, :client_accept, :integer
    add_column :projects, :price, :float, null: false
  end
end
